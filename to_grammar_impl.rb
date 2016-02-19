require 'Nokogiri'

grammar_file = ARGV[0] || 'swift_grammar.xml'

doc = Nokogiri::XML(File.read(grammar_file))

def ruleName(rule) 
  "rule_" + rule.gsub(/-/, '_')
end

doc.xpath("/rules").each do |rules|
  rules.xpath("./rule").each do |rule|
    ruleName = ruleName(rule["name"])
    puts "let #{ruleName} = Reference<Rule>()"
  end
end
puts
#   <- ProductionBuilder() <+> literal(LogicalNotLiteralMatcherComposer(matcher: [CharacterRange(literals: LiteralType.StringType("\""), LiteralType.StringType("\\"), LiteralType.StringType("\u{000A}"), LiteralType.StringType("\u{000D}"))]))

def mapToLiteral(literal)
  if literal.node_name == "not"
    "LogicalNotLiteralMatcherComposer(matcher: [CharacterRange(literals: #{literal.children.map{|l| mapToLiteral(l)}.compact.join(', ')})])"
  elsif literal.node_name == "range"
    range = literal.text.split("..").map{|i| if i.start_with?("U+"); "UnicodeScalar(0x#{i[2..-1]})" else "\"#{i}\"" end }
    "LiteralType.RangeType(#{range[0]}...#{range[1]})"
  elsif literal.node_name == "character"
    t = if literal.text.start_with?("U+"); "\\u\{#{literal.text[2..-1]}\}" else literal.text.gsub("\\", "\\\\\\").gsub("\"", "\\\"") end
    "LiteralType.CharacterType(\"#{t}\")"
  elsif literal.node_name == "text"
    #ignore
    nil
  else
    raise "unknown literal-type #{literal.node_name}"
  end
end

doc.xpath("/rules").each do |rules|
  rules.xpath("./rule").each do |rule|
    name = ruleName(rule["name"])
    puts "#{name}.assign((RuleBuilder(name: \"#{name}\")"
    rule.xpath("./production").each do |production|
      nodes = production.children.map do |child|
        if child.node_name == "keyword"
          token = child["token"]
          if "#{token}" == '"'
            token = '\\"'
          end
          "keyword(\"#{token}\", isOptional: #{child["optional"]})"
        elsif child.node_name == "rule_reference"
          "ruleRef(#{ruleName(child["ruleName"])}, isOptional: #{child["optional"]})"
        elsif child.node_name == "literal"
          literals = child.children.map do |literal|
            mapToLiteral(literal)
          end
          literalString = "literal(#{literals.compact.join(", ")})"
        elsif child.node_name == "text"
          nil
        else
          puts "error"
          puts child.node_name
          raise child
        end
      end.compact
      puts "  <- ProductionBuilder() <+> #{nodes.join(" <+> ")}"
    end
    puts ").createRule())"
  end
end

puts "var ruleTransitions : [Reference<Rule> : [Reference<Rule>]] = [:]"
doc.xpath("/rules").each do |rules|
  rules.xpath("./rule").each do |rule|
    transitions = rule.xpath(".//rule_reference").map {|transition| "#{ruleName(transition["ruleName"].to_s)}"}
    if transitions.count > 0
      puts "ruleTransitions[#{ruleName(rule["name"])}] = [#{transitions.join(', ')}]"
    end
  end
end
