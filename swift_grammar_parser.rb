#!/usr/bin/ruby

require 'nokogiri'
require 'pp'

# transform xml to a graph
class RuleNode
	attr_accessor :ruleName
	attr_accessor :parentRules
	attr_accessor :childRules
	attr_accessor :productions
	attr_accessor :depth
	
	def initialize(name)
		@ruleName = name
		@parentRules = []
		@childRules = []
		@productions = []
	end
	
	def match(string)
		@productions.any? do |p|
			p.nodes.first.match(string)
		end
	end
	
	def proposals(string)
		result = @productions.select{|p| p.nodes.first.match(string)}.map do |production|
			production.nodes.map(&:as_proposal_string)
		end
		result
	end
	
	def as_proposal_string
		"#<#{ruleName}>#"
	end
	
	def to_s
		@ruleName
	end
end

def all_ancestors(rule, traversed_nodes = [])
	return [] if traversed_nodes.include?(rule)
	result = rule.parentRules
	rule.parentRules.each do |parent|
		result += all_ancestors(rule, traversed_nodes << rule)
	end
	result.uniq
end

def all_descendants(rule, traversed_nodes = [])
	return [] if traversed_nodes.include?(rule)
	
	result = rule.childRules
	rule.childRules.each do |child|
		result += all_descendants(child, traversed_nodes << rule)
	end
	result.uniq
end

# rules like statements -> statement statements(opt) describe a collection
def is_collection_rule(rule)
	rule.productions.size == 2 && 
		((rule.productions[0].nodes.size == 1 && rule.productions[1].nodes.size == 2 && rule.productions[1].nodes[1] == rule) ||
		(rule.productions[1].nodes.size == 1 && rule.productions[0].nodes.size == 2 && rule.productions[0].nodes[1] == rule))
end

class LiteralNode
	attr_accessor :description
	
	def initialize(description)
		@description = description
	end
	
	def match(string)
	# TODO
		false
	end
	
	def as_proposal_string
		"#<#{@description}>#"
	end
	
	def to_s
		@description
	end
end

class KeywordNode
	attr_accessor :token
	
	def initialize(token)
		@token = token
	end
	
	def match(string)
		@token.start_with?(string)
	end
	
	def as_proposal_string
		@token
	end

	def to_s
		@token
	end
end

class Production
	attr_accessor :nodes
	
	def firstNodeAsRule(&block)
		nodes.size > 0 && nodes.first.instance_of?(RuleNode) && yield(nodes.first)
	end
end

XMLDOC = Nokogiri::XML(open(File.expand_path("./swift_grammar_modified.xml")))

# create all rule-nodes
RULE_XML_NODES = XMLDOC.xpath("/rules/rule")
RULENAME_MAPPED_TO_NODE = RULE_XML_NODES.inject({}) do |mapping, ruleXmlNode|
	node = RuleNode.new ruleXmlNode["name"]
	mapping[node.ruleName] = node
	mapping
end

# add the child-nodes and productions to the rulenodes
RULE_XML_NODES.each do |ruleXmlNode|
	rule = RULENAME_MAPPED_TO_NODE[ruleXmlNode["name"]]
	rule.productions = ruleXmlNode.xpath(".//production").map do |production| 
		prod = Production.new
		prod.nodes = production.xpath("./*").map do |pn| 
			if pn.name == "rule_reference"
				RULENAME_MAPPED_TO_NODE[pn["ruleName"]]
			elsif pn.name == "keyword"
				KeywordNode.new pn["token"]
			else
				LiteralNode.new pn.text
			end
		end
		prod
	end

	rule.childRules = ruleXmlNode.xpath(".//rule_reference/@ruleName").to_a.uniq.map{|reference| RULENAME_MAPPED_TO_NODE[reference.to_s]}
end

# add the ancestor-nodes to the rulenodes
RULENAME_MAPPED_TO_NODE.values.each do |rule|
	rule.childRules.each do |child|
		child.parentRules << rule
	end
end

top_level_nodes = RULENAME_MAPPED_TO_NODE.values.select{|rule| rule.parentRules.size == 0}
throw "more than one top-level-node, that probably destroys many assumptions in the further code" if top_level_nodes.size > 1
throw "no top-level-node, that probably destroys many assumptions in the further code" if top_level_nodes.size == 0

TOP_LEVEL_NODE = top_level_nodes.first

# calcualte and assign the depth-level to each node
def traverse(rule, current_depth = 0, &block)
	return if rule.depth != nil # already has a depth, thus all its childRules also have a depth
	block.call(rule, current_depth)
	rule.childRules.each do |child|
		traverse(child, current_depth + 1, &block)
	end
end

traverse(TOP_LEVEL_NODE) do |rule, current_depth|
	rule.depth = current_depth
end

RULE_ALIASES = RULENAME_MAPPED_TO_NODE.values.select {|rule| (rule.productions.size == 1) && (rule.productions.first.nodes.size == 1)}

#puts RULE_ALIASES.map(&:ruleName)

def traverse_upwards_when_true_impl(rule, traversed_nodes, &block)
	higherParentRules = rule.parentRules.select{|p| p.depth != nil && p.depth < rule.depth}
	higherParentRules.size == 0 || higherParentRules.any? do |parent|
#		puts "#{" " * traversed_nodes.size*2} check for #{rule.ruleName} and #{parent.ruleName} '#{yield rule,parent}' will return? #{traversed_nodes.include?(parent) || rule == parent}"
		return false if traversed_nodes.include?(parent)
		if yield rule, parent
			traverse_upwards_when_true_impl(parent, traversed_nodes.clone << rule) {|r,p| yield r,p}
		else
			false
		end
	end
end

def traverse_upwards_when_true(rule, &block)
	traverse_upwards_when_true_impl(rule, []) {|r,p| yield r,p }
end

def leaves(rule, traversed_rules = [])
	return [] if traversed_rules.include?(rule)
	subnodes = rule.productions.map {|p| res = nil; p.firstNodeAsRule{|r| res = r}; res}.compact
	result = subnodes.flat_map do |s|
		leaves(s, traversed_rules.clone << rule)
	end
	if subnodes.size == 0
		result << rule
	end
	result.uniq
end

puts leaves(RULENAME_MAPPED_TO_NODE["top-level-declaration"]).map(&:ruleName).sort.join(", ")

current_context = RULENAME_MAPPED_TO_NODE["top-level-declaration"]

def calculate_next_possible_rules(current_context)
	next_possibilities = all_descendants(current_context).select do |rule|
#		puts "try for #{rule.ruleName}"
		traverse_upwards_when_true(rule) do |r, p|
			any = p.productions.any? do |production|
				production.firstNodeAsRule {|fr| fr == r}
			end
#			puts "  currently #{any} for #{r.ruleName} (checked against #{p.ruleName})"
			any
		end
	end
	next_possibilities.select {|r| not r.productions.all?{|p| p.firstNodeAsRule{|fr| next_possibilities.include?(fr) }}}
end
#
#e = traverse_upwards_when_true(RULENAME_MAPPED_TO_NODE["for-statement"]) do |rule, parent|
#	any = parent.productions.any? do |production|
#		production.firstNodeAsRule {|fr| fr == rule}
#	end
#	any
#end
#puts e

puts "so whats next?" # all descendants: #{all_descendants(current_context).map(&:ruleName).sort.join(",")}"
nexts = calculate_next_possible_rules(current_context)
puts nexts.map(&:ruleName).sort.join(", ")
puts nexts.flat_map{|r| r.productions}.map{|p| p.nodes.first}.select{|r| !r.instance_of?(RuleNode)}.map(&:to_s).uniq

INPUT = "fu"
puts "=== selection for #{INPUT}"
next_based_on_input = nexts.select {|n| n.match(INPUT) }
puts next_based_on_input
puts next_based_on_input.flat_map{|n| n.proposals(INPUT)}.map{|array| array.join(" ")}.uniq

# transform graph to classes: Rule, Literal, RuleReference
