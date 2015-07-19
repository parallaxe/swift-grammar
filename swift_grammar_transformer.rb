#!/usr/bin/ruby

require 'nokogiri'

# transform html to nicer xml
DOC = Nokogiri::HTML(open(File.expand_path("./swift_grammar.html")))
RULES = DOC.css(".syntax-def-name")

## the text-nodes of the rules / literals may include unicode-signs that aren't visible and not relevant for the grammar
## we use this regex to drop them and preserve every character of value
TEXT_FIXING_REGEX = /[^A-Za-z0-9\-\+\*\{\}\(\)\[\]\|_\.:?!,;%<>^&~=\/\"]*/

def consolidate_productions_per_rule(rules_mapped_to_same_name)
	rules_mapped_to_same_name.inject({}) do |rules, (name, ruleNodes)|
		# there are either subnodes of the class "alternative" or literal/optional/syntactic-cat
		productions = ruleNodes.flat_map do |rn|
			prods = rn.xpath("./following-sibling::*[@class = 'alternative']").map{|sub| sub.xpath "./*[@class]"}
			if prods.size == 0
				prods = [rn.xpath("./following-sibling::*[@class]")]
			end
			prods
		end
		rules[name] = productions
		puts "rule #{name} has #{productions.size} productions #{productions.map(&:class)}"
		rules
	end
end

## create XML
builder = Nokogiri::XML::Builder.new do |xml|
	xml.rules {
		rules_mapped_to_same_name = RULES.group_by{|rule| rule.xpath(".//text()").map {|i| i.text.gsub(TEXT_FIXING_REGEX, "")}[0]}
		# collect the production-nodes (the right-side-nodes of rules) and associate them with the rule-name
		ruleNamesMappedToProductions = consolidate_productions_per_rule(rules_mapped_to_same_name)
		
		# the productions may contain optional-nodes
		# productions with optional nodes can be substituted by multiple productions without optional nodes
		# for example: union-style-enum-case -> enum-case-name tuple-type(opt)
		# can be substituted by:
		#   union-style-enum-case -> enum-case-name tuple-type
		#   union-style-enum-case -> enum-case-name
		# that makes the productions more verbose but also easier to process
		ruleNamesMappedToProductions = ruleNamesMappedToProductions.inject({}) do |rules, (name, productions)|
			new_productions = productions.flat_map do |production|
				puts name
				num_optionals = production.reduce(0) {|num_optionals, p| num_optionals += if (p["class"] == "optional"); 1; else 0; end }
				# produces arrays with the size of num_options, consisting of booleans
				combinations = (0...2**num_optionals).map do |i|
					(0...num_optionals).map{|x| 2**x}.map do |x|
						x & i > 0
					end
				end
				puts "rule #{name} combinations #{combinations}"

				productions = combinations.map do |combination|
					is_next_optional_included_or_not = combination.each
					production.reduce([]) do |new_production, p|
						if p["class"] == "optional"
							new_production << p.children[0] if is_next_optional_included_or_not.next
						else
							new_production << p
						end
						new_production
					end
				end
				
				productions
			end
			puts "rule #{name} after applying combinations: #{new_productions.size}"
			rules[name] = new_productions
			rules
		end
		
		ruleNamesMappedToProductions.each do |ruleName, productions|
			xml.rule(:name => ruleName) {
				productions.each do |production|
					xml.production {
						production.each do |node|
							next if node["class"] == "arrow"
							if node["class"] == "syntactic-cat"
								xml.rule_reference(:ruleName => node.xpath(".//text()").map {|i| i.text.gsub(TEXT_FIXING_REGEX, "")}[0])
							elsif node["class"] == "literal"
								text = node.xpath(".//text()").map {|i| i.text.gsub(TEXT_FIXING_REGEX, "")}[0]
								xml.keyword(:token => text)
							else
								text = node.xpath(".//text()").map {|i| i.text.gsub(/[^A-Za-z0-9\-\+\*\{\}\(\)\[\]\|_\.:?!,;%<>^&~=\/\ "]*/, "")}[0]
								xml.literal {
									xml.text(text)
								}
							end
						end
					}
				end
			}
		end
	}
end

XMLDOC = builder.doc
puts XMLDOC.to_xml

File.write(File.expand_path("./swift_grammar.xml"), XMLDOC.to_xml)
