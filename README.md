# swift-grammar
Transforming / modifying the official swift-grammar

swift_grammar.html is a copy of https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/zzSummaryOfTheGrammar.html.

swift_grammar.xml is produces by running swift_grammar_transformer.rb inside the same directory where the script lives in. It consists of the following elements:

* rule
* production
* keyword
* rule\_reference
* literal

For example, the rule for if-statement looks like

```xml
  <rule name="if-statement">
    <production>
      <keyword token="if"/>
      <rule_reference ruleName="if-condition"/>
      <rule_reference ruleName="code-block"/>
    </production>
    <production>
      <keyword token="if"/>
      <rule_reference ruleName="if-condition"/>
      <rule_reference ruleName="code-block"/>
      <rule_reference ruleName="else-clause"/>
    </production>
  </rule>
```

The example shows the usage of rule, production, keyword and rule\_reference. An example for the usage of a literal is

```xml
  <rule name="decimal-digit">
    <production>
      <literal>Digit 0 through 9</literal>
    </production>
  </rule>
```

In the original grammar-description, some productions include elements that are optional. In the transformed xml, they are resolved by duplicating the production where one production contains the optional element, the other not. If it contains multiple optional elements, all combinations are applied accordingly.