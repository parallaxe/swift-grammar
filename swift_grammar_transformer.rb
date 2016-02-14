#!/usr/bin/ruby

require 'nokogiri'

class LogicalNot
  attr_accessor :except
  
  def initialize(except)
    @except = except
  end
end

LITERALMAPPINGS = {
  # not exactly mapped
"A decimal integer greater than zero" => ["0".."9"],
# not exactly mapped
"A decimal integer between 0 and 255, inclusive" => ["0".."9"],
# not exactly mapped
"Any identifier, keyword, literal, or operator" => ["A".."Z", "a".."z", "0".."9"],
# not exactly mapped
"Any punctuation except  ( ,  ) ,  [ ,  ] ,  { , or  }" => ["*", "=", "+", "-", "/", "_"],
"Upper- or lowercase letter A through Z" => ["A".."Z", "a".."z"],
"U+00A8, U+00AA, U+00AD, U+00AF, U+00B2U+00B5, or U+00B7U+00BA" => ["U+00A8", "U+00AA", "U+00AF", "U+00B2".."U+00B5", "U+00B7".."U+00BA"],
"U+00BCU+00BE, U+00C0U+00D6, U+00D8U+00F6, or U+00F8U+00FF" => ["U+00BC".."U+00BE", "U+00D8".."U+00F6", "U+00F8".."U+00FF"],
"U+0100U+02FF, U+0370U+167F, U+1681U+180D, or U+180FU+1DBF" => ["U+0100".."U+02FF", "U+0370".."U+167F", "U+1681".."U+180D", "U+180F".."U+1DBF"],
"U+1E00U+1FFF" => "U+1E00".."U+1FFF",
"U+200BU+200D, U+202AU+202E, U+203FU+2040, U+2054, or U+2060U+206F" => ["U+200B".."U+200D", "U+202A".."U+202E", "U+203F".."U+2040", "U+2054", "U+2060".."U+206F"],
"U+2070U+20CF, U+2100U+218F, U+2460U+24FF, or U+2776U+2793" => ["U+2070".."U+20CF", "U+2100".."U+218F", "U+2460".."U+24FF", "U+2776".."U+2793"],
"U+2C00U+2DFF or U+2E80U+2FFF" => ["U+2C00".."U+2DFF", "U+2E80".."U+2FFF"],
"U+3004U+3007, U+3021U+302F, U+3031U+303F, or U+3040U+D7FF" => ["U+3004".."U+3007", "U+3021".."U+302F", "U+3031".."U+303F", "U+3040".."U+D7FF"],
"U+F900U+FD3D, U+FD40U+FDCF, U+FDF0U+FE1F, or U+FE30U+FE44" => ["U+F900".."U+FD3D", "U+FD40".."U+FDCF", "U+FDF0".."U+FE1F", "U+FE30".."U+FE44"],
"U+FE47U+FFFD" => "U+FE47".."U+FFFD",
"U+10000U+1FFFD, U+20000U+2FFFD, U+30000U+3FFFD, or U+40000U+4FFFD" => ["U+10000".."U+1FFFD", "U+20000".."U+2FFFD", "U+30000".."U+3FFFD", "U+40000".."U+4FFFD"],
"U+50000U+5FFFD, U+60000U+6FFFD, U+70000U+7FFFD, or U+80000U+8FFFD" => ["U+50000".."U+5FFFD", "U+60000".."U+6FFFD", "U+70000".."U+7FFFD", "U+80000".."U+8FFFD"],
"U+90000U+9FFFD, U+A0000U+AFFFD, U+B0000U+BFFFD, or U+C0000U+CFFFD" => ["U+90000".."U+9FFFD", "U+A0000".."U+AFFFD", "U+B0000".."U+BFFFD", "U+C0000".."U+CFFFD"],
"U+D0000U+DFFFD or U+E0000U+EFFFD" => ["U+D0000".."U+DFFFD", "U+E0000".."U+EFFFD"],
"Digit 0 through 9" => ["0".."9"],
"U+0300U+036F, U+1DC0U+1DFF, U+20D0U+20FF, or U+FE20U+FE2F" => ["U+0300".."U+036F", "U+1DC0".."U+1DFF", "U+20D0".."U+20FF", "U+FE20".."U+FE2F"],
"Digit 0 or 1" => ["0", "1"],
"Digit 0 through 7" => ["0".."7"],
"Digit 0 through 9" => ["0".."9"],
"Digit 0 through 9, a through f, or A through F" => ["0".."9","a".."f","A".."F"],
"Any Unicode scalar value except  \" ,   , U+000A, or U+000D" => LogicalNot.new(["\"", "\\", "U+000A", "U+000D"]),
"Between one and eight hexadecimal digits" => ["0".."9","a".."f","A".."F"],
"U+00A1U+00A7" => ["U+00A1".."U+00A7"],
"U+00A9 or U+00AB" => ["U+00A9", "U+00AB"],
"U+00AC or U+00AE" => ["U+00AC", "U+00AE"],
"U+00B0U+00B1, U+00B6, U+00BB, U+00BF, U+00D7, or U+00F7" => ["U+00B0".."U+00B1", "U+00BB", "U+00BF", "U+00D7", "U+00F7"],
"U+2016U+2017 or U+2020U+2027" => "U+2016".."U+2017",
"U+2030U+203E" => "U+2030".."U+203E",
"U+2041U+2053" => "U+2041".."U+2053",
"U+2055U+205E" => "U+2055".."U+205E",
"U+2190U+23FF" => "U+2190".."U+23FF",
"U+2500U+2775" => "U+2500".."U+2775",
"U+2794U+2BFF" => "U+2794".."U+2BFF",
"U+2E00U+2E7F" => "U+2E00".."U+2E7F",
"U+3001U+3003" => "U+3001".."U+3003",
"U+3008U+3030" => "U+3008".."U+3030",
"U+0300U+036F" => "U+0300".."U+036F",
"U+1DC0U+1DFF" => "U+1DC0".."U+1DFF",
"U+20D0U+20FF" => "U+20D0".."U+20FF",
"U+FE00U+FE0F" => "U+FE00".."U+FE0F",
"U+FE20U+FE2F" => "U+FE20".."U+FE2F",
"U+E0100U+E01EF" => "U+E0100".."U+E01EF",
}

# transform html to nicer xml
DOC = Nokogiri::HTML(open(File.expand_path("./swift_grammar.html")))
RULES = DOC.css(".syntax-def-name")

## the text-nodes of the rules / literals may include unicode-signs that aren't visible and not relevant for the grammar
## we use this regex to drop them and preserve every character of value
TEXT_FIXING_REGEX = /[^A-Za-z0-9\-\+\*\{\}\(\)\[\]\|_\.:?!,;%<>^&~=\/\"@`\$\\']*/

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
		
		ruleNamesMappedToProductions.each do |ruleName, productions|
			xml.rule(:name => ruleName) {
				productions.each do |production|
					xml.production {
						production.each do |node|
							next if node["class"] == "arrow"
              isOptional = false
              if node["class"] == "optional"
                isOptional = true
                node = node.children.select{|x| x["class"] != nil}.first
              end
							if node["class"] == "syntactic-cat"
								xml.rule_reference(:ruleName => node.xpath(".//text()").map {|i| i.text.gsub(TEXT_FIXING_REGEX, "")}.join(" ").strip, :optional => isOptional)
							elsif node["class"] == "literal"
                text = node.xpath(".//text()").map {|i| i.text.gsub(TEXT_FIXING_REGEX, "")}[0].gsub("\\", "\\\\\\").gsub("\"", "\\\"")
								xml.keyword(:token => text)
							else
								text = node.xpath(".//text()").map {|i| i.text.gsub(/[^A-Za-z0-9\-\+\*\{\}\(\)\[\]\|_\.:?!,;%<>^&~=\/\ "]*/, "")}.join(" ")
                literalMapping = LITERALMAPPINGS[text]
                raise "no literal mapping found for #{text}" if literalMapping == nil
								xml.literal {
                  if literalMapping.is_a?(Range)
                    xml.range{xml.text(literalMapping)}
                  elsif literalMapping.is_a?(LogicalNot)
                    xml.not {
                      literalMapping.except.each do |l|
                        xml.character {xml.text(l)}
                      end
                    }
                  else
                    literalMapping.each do |mapping|
                      if mapping.is_a?(Array) 
                        mapping.each do |range|
                          if range.is_a?(Range)
                            xml.range { xml.text(range)}
                          else
                            xml.character { xml.text(range)}
                          end
                            # puts range.class
                          # xml.range { xml.text(range) }
                        end
                      else
                        if mapping.is_a?(Range)
                          xml.range { xml.text(mapping) }
                        else
                          xml.character { xml.text(mapping) }
                        end
                      end
                    end
                  end
								}
							end
						end
					}
				end
			}
		end
	}
end
puts "finished"
XMLDOC = builder.doc
# puts XMLDOC.to_xml

File.write(File.expand_path("./swift_grammar.xml"), XMLDOC.to_xml)
