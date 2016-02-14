diff --git a/swift_grammar_modified.xml b/swift_grammar_modified.xml
new file mode 100644
index 0000000..eeaf45a
--- /dev/null
+++ b/swift_grammar_modified.xml
@@ -0,0 +1,4121 @@
+<?xml version="1.0"?>
+<rules>
+  <rule name="statement">
+    <production>
+      <rule_reference ruleName="expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="expression"/>
+      <keyword token=";"/>
+    </production>
+    <production>
+      <rule_reference ruleName="declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="declaration"/>
+      <keyword token=";"/>
+    </production>
+    <production>
+      <rule_reference ruleName="loop-statement"/>
+    </production>
+    <production>
+      <rule_reference ruleName="loop-statement"/>
+      <keyword token=";"/>
+    </production>
+    <production>
+      <rule_reference ruleName="branch-statement"/>
+    </production>
+    <production>
+      <rule_reference ruleName="branch-statement"/>
+      <keyword token=";"/>
+    </production>
+    <production>
+      <rule_reference ruleName="labeled-statement"/>
+    </production>
+    <production>
+      <rule_reference ruleName="labeled-statement"/>
+      <keyword token=";"/>
+    </production>
+  </rule>
+  <rule name="statements">
+    <production>
+      <rule_reference ruleName="statement"/>
+    </production>
+    <production>
+      <rule_reference ruleName="statement"/>
+      <rule_reference ruleName="statements"/>
+    </production>
+  </rule>
+  <rule name="loop-statement">
+    <production>
+      <rule_reference ruleName="for-statement"/>
+    </production>
+    <production>
+      <rule_reference ruleName="for-in-statement"/>
+    </production>
+    <production>
+      <rule_reference ruleName="while-statement"/>
+    </production>
+    <production>
+      <rule_reference ruleName="do-while-statement"/>
+    </production>
+  </rule>
+  <rule name="for-statement">
+    <production>
+      <keyword token="for"/>
+      <keyword token=";"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="for"/>
+      <rule_reference ruleName="for-init"/>
+      <keyword token=";"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="for"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="for"/>
+      <rule_reference ruleName="for-init"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="for"/>
+      <keyword token=";"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="for"/>
+      <rule_reference ruleName="for-init"/>
+      <keyword token=";"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="for"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="for"/>
+      <rule_reference ruleName="for-init"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="for"/>
+      <keyword token="("/>
+      <keyword token=";"/>
+      <keyword token=";"/>
+      <keyword token=")"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="for"/>
+      <keyword token="("/>
+      <rule_reference ruleName="for-init"/>
+      <keyword token=";"/>
+      <keyword token=";"/>
+      <keyword token=")"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="for"/>
+      <keyword token="("/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token=";"/>
+      <keyword token=")"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="for"/>
+      <keyword token="("/>
+      <rule_reference ruleName="for-init"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token=";"/>
+      <keyword token=")"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="for"/>
+      <keyword token="("/>
+      <keyword token=";"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token=")"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="for"/>
+      <keyword token="("/>
+      <rule_reference ruleName="for-init"/>
+      <keyword token=";"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token=")"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="for"/>
+      <keyword token="("/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token=")"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="for"/>
+      <keyword token="("/>
+      <rule_reference ruleName="for-init"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token=";"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token=")"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+  </rule>
+  <rule name="for-init">
+    <production>
+      <rule_reference ruleName="variable-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="expression-list"/>
+    </production>
+  </rule>
+  <rule name="for-in-statement">
+    <production>
+      <keyword token="for"/>
+      <rule_reference ruleName="pattern"/>
+      <keyword token="in"/>
+      <rule_reference ruleName="expression"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+  </rule>
+  <rule name="while-statement">
+    <production>
+      <keyword token="while"/>
+      <rule_reference ruleName="while-condition"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+  </rule>
+  <rule name="while-condition">
+    <production>
+      <rule_reference ruleName="expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="optional-binding-list"/>
+    </production>
+    <production>
+      <rule_reference ruleName="expression"/>
+      <rule_reference ruleName="optional-binding-list"/>
+    </production>
+  </rule>
+  <rule name="optional-binding-list">
+    <production>
+      <rule_reference ruleName="optional-binding-clause"/>
+    </production>
+    <production>
+      <rule_reference ruleName="optional-binding-clause"/>
+      <keyword token=","/>
+      <rule_reference ruleName="optional-binding-list"/>
+    </production>
+  </rule>
+  <rule name="optional-binding-clause">
+    <production>
+      <rule_reference ruleName="optional-binding-head"/>
+    </production>
+    <production>
+      <rule_reference ruleName="optional-binding-head"/>
+      <rule_reference ruleName="optional-binding-continuation-list"/>
+    </production>
+    <production>
+      <rule_reference ruleName="optional-binding-head"/>
+      <rule_reference ruleName="guard-clause"/>
+    </production>
+    <production>
+      <rule_reference ruleName="optional-binding-head"/>
+      <rule_reference ruleName="optional-binding-continuation-list"/>
+      <rule_reference ruleName="guard-clause"/>
+    </production>
+  </rule>
+  <rule name="optional-binding-head">
+    <production>
+      <keyword token="let"/>
+      <rule_reference ruleName="identifier-pattern"/>
+      <rule_reference ruleName="initializer"/>
+    </production>
+    <production>
+      <keyword token="var"/>
+      <rule_reference ruleName="identifier-pattern"/>
+      <rule_reference ruleName="initializer"/>
+    </production>
+  </rule>
+  <rule name="optional-binding-continuation-list">
+    <production>
+      <rule_reference ruleName="optional-binding-continuation"/>
+    </production>
+    <production>
+      <rule_reference ruleName="optional-binding-continuation"/>
+      <keyword token=","/>
+      <rule_reference ruleName="optional-binding-continuation-list"/>
+    </production>
+  </rule>
+  <rule name="optional-binding-continuation">
+    <production>
+      <rule_reference ruleName="identifier-pattern"/>
+      <rule_reference ruleName="initializer"/>
+    </production>
+    <production>
+      <rule_reference ruleName="optional-binding-head"/>
+    </production>
+  </rule>
+  <rule name="do-while-statement">
+    <production>
+      <keyword token="do"/>
+      <rule_reference ruleName="code-block"/>
+      <keyword token="while"/>
+      <rule_reference ruleName="expression"/>
+    </production>
+  </rule>
+  <rule name="branch-statement">
+    <production>
+      <rule_reference ruleName="if-statement"/>
+    </production>
+    <production>
+      <rule_reference ruleName="switch-statement"/>
+    </production>
+  </rule>
+  <rule name="if-statement">
+    <production>
+      <keyword token="if"/>
+      <rule_reference ruleName="if-condition"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="if"/>
+      <rule_reference ruleName="if-condition"/>
+      <rule_reference ruleName="code-block"/>
+      <rule_reference ruleName="else-clause"/>
+    </production>
+  </rule>
+  <rule name="if-condition">
+    <production>
+      <rule_reference ruleName="expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="optional-binding-list"/>
+    </production>
+    <production>
+      <rule_reference ruleName="expression"/>
+      <rule_reference ruleName="optional-binding-list"/>
+    </production>
+  </rule>
+  <rule name="else-clause">
+    <production>
+      <keyword token="else"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="else"/>
+      <rule_reference ruleName="if-statement"/>
+    </production>
+  </rule>
+  <rule name="switch-statement">
+    <production>
+      <keyword token="switch"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token="{"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="switch"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token="{"/>
+      <rule_reference ruleName="switch-cases"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="switch-cases">
+    <production>
+      <rule_reference ruleName="switch-case"/>
+    </production>
+    <production>
+      <rule_reference ruleName="switch-case"/>
+      <rule_reference ruleName="switch-cases"/>
+    </production>
+  </rule>
+  <rule name="switch-case">
+    <production>
+      <rule_reference ruleName="case-label"/>
+      <rule_reference ruleName="statements"/>
+    </production>
+    <production>
+      <rule_reference ruleName="default-label"/>
+      <rule_reference ruleName="statements"/>
+    </production>
+    <production>
+      <rule_reference ruleName="case-label"/>
+      <keyword token=";"/>
+    </production>
+    <production>
+      <rule_reference ruleName="default-label"/>
+      <keyword token=";"/>
+    </production>
+  </rule>
+  <rule name="case-label">
+    <production>
+      <keyword token="case"/>
+      <rule_reference ruleName="case-item-list"/>
+      <keyword token=":"/>
+    </production>
+  </rule>
+  <rule name="case-item-list">
+    <production>
+      <rule_reference ruleName="pattern"/>
+    </production>
+    <production>
+      <rule_reference ruleName="pattern"/>
+      <rule_reference ruleName="guard-clause"/>
+    </production>
+    <production>
+      <rule_reference ruleName="pattern"/>
+      <keyword token=","/>
+      <rule_reference ruleName="case-item-list"/>
+    </production>
+    <production>
+      <rule_reference ruleName="pattern"/>
+      <rule_reference ruleName="guard-clause"/>
+      <keyword token=","/>
+      <rule_reference ruleName="case-item-list"/>
+    </production>
+  </rule>
+  <rule name="default-label">
+    <production>
+      <keyword token="default"/>
+      <keyword token=":"/>
+    </production>
+  </rule>
+  <rule name="guard-clause">
+    <production>
+      <keyword token="where"/>
+      <rule_reference ruleName="guard-expression"/>
+    </production>
+  </rule>
+  <rule name="guard-expression">
+    <production>
+      <rule_reference ruleName="expression"/>
+    </production>
+  </rule>
+  <rule name="labeled-statement">
+    <production>
+      <rule_reference ruleName="statement-label"/>
+      <rule_reference ruleName="loop-statement"/>
+    </production>
+    <production>
+      <rule_reference ruleName="statement-label"/>
+      <rule_reference ruleName="switch-statement"/>
+    </production>
+  </rule>
+  <rule name="statement-label">
+    <production>
+      <rule_reference ruleName="label-name"/>
+      <keyword token=":"/>
+    </production>
+  </rule>
+  <rule name="label-name">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+  </rule>
+  <rule name="control-transfer">
+    <production>
+      <rule_reference ruleName="break-statement"/>
+    </production>
+    <production>
+      <rule_reference ruleName="continue-statement"/>
+    </production>
+    <production>
+      <rule_reference ruleName="fallthrough-statement"/>
+    </production>
+    <production>
+      <rule_reference ruleName="return-statement"/>
+    </production>
+  </rule>
+  <rule name="break-statement">
+    <production>
+      <keyword token="break"/>
+    </production>
+    <production>
+      <keyword token="break"/>
+      <rule_reference ruleName="label-name"/>
+    </production>
+  </rule>
+  <rule name="continue-statement">
+    <production>
+      <keyword token="continue"/>
+    </production>
+    <production>
+      <keyword token="continue"/>
+      <rule_reference ruleName="label-name"/>
+    </production>
+  </rule>
+  <rule name="fallthrough-statement">
+    <production>
+      <keyword token="fallthrough"/>
+    </production>
+  </rule>
+  <rule name="return-statement">
+    <production>
+      <keyword token="return"/>
+    </production>
+    <production>
+      <keyword token="return"/>
+      <rule_reference ruleName="expression"/>
+    </production>
+  </rule>
+  <rule name="generic-parameter-clause">
+    <production>
+      <keyword token="&lt;"/>
+      <rule_reference ruleName="generic-parameter-list"/>
+      <keyword token="&gt;"/>
+    </production>
+    <production>
+      <keyword token="&lt;"/>
+      <rule_reference ruleName="generic-parameter-list"/>
+      <rule_reference ruleName="requirement-clause"/>
+      <keyword token="&gt;"/>
+    </production>
+  </rule>
+  <rule name="generic-parameter-list">
+    <production>
+      <rule_reference ruleName="generic-parameter"/>
+    </production>
+    <production>
+      <rule_reference ruleName="generic-parameter"/>
+      <keyword token=","/>
+      <rule_reference ruleName="generic-parameter-list"/>
+    </production>
+  </rule>
+  <rule name="generic-parameter">
+    <production>
+      <rule_reference ruleName="type-name"/>
+    </production>
+    <production>
+      <rule_reference ruleName="type-name"/>
+      <keyword token=":"/>
+      <rule_reference ruleName="type-identifier"/>
+    </production>
+    <production>
+      <rule_reference ruleName="type-name"/>
+      <keyword token=":"/>
+      <rule_reference ruleName="protocol-composition-type"/>
+    </production>
+  </rule>
+  <rule name="requirement-clause">
+    <production>
+      <keyword token="where"/>
+      <rule_reference ruleName="requirement-list"/>
+    </production>
+  </rule>
+  <rule name="requirement-list">
+    <production>
+      <rule_reference ruleName="requirement"/>
+    </production>
+    <production>
+      <rule_reference ruleName="requirement"/>
+      <keyword token=","/>
+      <rule_reference ruleName="requirement-list"/>
+    </production>
+  </rule>
+  <rule name="requirement">
+    <production>
+      <rule_reference ruleName="conformance-requirement"/>
+    </production>
+    <production>
+      <rule_reference ruleName="same-type-requirement"/>
+    </production>
+  </rule>
+  <rule name="conformance-requirement">
+    <production>
+      <rule_reference ruleName="type-identifier"/>
+      <keyword token=":"/>
+      <rule_reference ruleName="type-identifier"/>
+    </production>
+    <production>
+      <rule_reference ruleName="type-identifier"/>
+      <keyword token=":"/>
+      <rule_reference ruleName="protocol-composition-type"/>
+    </production>
+  </rule>
+  <rule name="same-type-requirement">
+    <production>
+      <rule_reference ruleName="type-identifier"/>
+      <keyword token="=="/>
+      <rule_reference ruleName="type"/>
+    </production>
+  </rule>
+  <rule name="generic-argument-clause">
+    <production>
+      <keyword token="&lt;"/>
+      <rule_reference ruleName="generic-argument-list"/>
+      <keyword token="&gt;"/>
+    </production>
+  </rule>
+  <rule name="generic-argument-list">
+    <production>
+      <rule_reference ruleName="generic-argument"/>
+    </production>
+    <production>
+      <rule_reference ruleName="generic-argument"/>
+      <keyword token=","/>
+      <rule_reference ruleName="generic-argument-list"/>
+    </production>
+  </rule>
+  <rule name="generic-argument">
+    <production>
+      <rule_reference ruleName="type"/>
+    </production>
+  </rule>
+  <rule name="declaration">
+    <production>
+      <rule_reference ruleName="import-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="constant-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="variable-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="typealias-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="function-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="enum-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="struct-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="class-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="protocol-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="initializer-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="deinitializer-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="extension-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="subscript-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="operator-declaration"/>
+    </production>
+  </rule>
+  <rule name="declarations">
+    <production>
+      <rule_reference ruleName="declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="declaration"/>
+      <rule_reference ruleName="declarations"/>
+    </production>
+  </rule>
+  <rule name="top-level-declaration">
+    <production/>
+    <production>
+      <rule_reference ruleName="statements"/>
+    </production>
+  </rule>
+  <rule name="code-block">
+    <production>
+      <keyword token="{"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="statements"/>
+      <rule_reference ruleName="control-transfer"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="control-transfer"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="control-transfer"/>
+      <keyword token=";"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="statements"/>
+      <rule_reference ruleName="control-transfer"/>
+      <keyword token=";"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="import-declaration">
+    <production>
+      <keyword token="import"/>
+      <rule_reference ruleName="import-path"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="import"/>
+      <rule_reference ruleName="import-path"/>
+    </production>
+    <production>
+      <keyword token="import"/>
+      <rule_reference ruleName="import-kind"/>
+      <rule_reference ruleName="import-path"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="import"/>
+      <rule_reference ruleName="import-kind"/>
+      <rule_reference ruleName="import-path"/>
+    </production>
+  </rule>
+  <rule name="import-kind">
+    <production>
+      <keyword token="typealias"/>
+    </production>
+    <production>
+      <keyword token="struct"/>
+    </production>
+    <production>
+      <keyword token="class"/>
+    </production>
+    <production>
+      <keyword token="enum"/>
+    </production>
+    <production>
+      <keyword token="protocol"/>
+    </production>
+    <production>
+      <keyword token="var"/>
+    </production>
+    <production>
+      <keyword token="func"/>
+    </production>
+  </rule>
+  <rule name="import-path">
+    <production>
+      <rule_reference ruleName="import-path-identifier"/>
+    </production>
+    <production>
+      <rule_reference ruleName="import-path-identifier"/>
+      <keyword token="."/>
+      <rule_reference ruleName="import-path"/>
+    </production>
+  </rule>
+  <rule name="import-path-identifier">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+    <production>
+      <rule_reference ruleName="operator"/>
+    </production>
+  </rule>
+  <rule name="constant-declaration">
+    <production>
+      <keyword token="let"/>
+      <rule_reference ruleName="pattern-initializer-list"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="let"/>
+      <rule_reference ruleName="pattern-initializer-list"/>
+    </production>
+    <production>
+      <rule_reference ruleName="declaration-modifiers"/>
+      <keyword token="let"/>
+      <rule_reference ruleName="pattern-initializer-list"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="declaration-modifiers"/>
+      <keyword token="let"/>
+      <rule_reference ruleName="pattern-initializer-list"/>
+    </production>
+  </rule>
+  <rule name="pattern-initializer-list">
+    <production>
+      <rule_reference ruleName="pattern-initializer"/>
+    </production>
+    <production>
+      <rule_reference ruleName="pattern-initializer"/>
+      <keyword token=","/>
+      <rule_reference ruleName="pattern-initializer-list"/>
+    </production>
+  </rule>
+  <rule name="pattern-initializer">
+    <production>
+      <rule_reference ruleName="pattern"/>
+    </production>
+    <production>
+      <rule_reference ruleName="pattern"/>
+      <rule_reference ruleName="initializer"/>
+    </production>
+  </rule>
+  <rule name="initializer">
+    <production>
+      <keyword token="="/>
+      <rule_reference ruleName="expression"/>
+    </production>
+  </rule>
+  <rule name="variable-declaration">
+    <production>
+      <rule_reference ruleName="variable-declaration-head"/>
+      <rule_reference ruleName="pattern-initializer-list"/>
+    </production>
+    <production>
+      <rule_reference ruleName="variable-declaration-head"/>
+      <rule_reference ruleName="variable-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <rule_reference ruleName="variable-declaration-head"/>
+      <rule_reference ruleName="variable-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="getter-setter-block"/>
+    </production>
+    <production>
+      <rule_reference ruleName="variable-declaration-head"/>
+      <rule_reference ruleName="variable-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="getter-setter-keyword-block"/>
+    </production>
+    <production>
+      <rule_reference ruleName="variable-declaration-head"/>
+      <rule_reference ruleName="variable-name"/>
+      <rule_reference ruleName="initializer"/>
+      <rule_reference ruleName="willSet-didSet-block"/>
+    </production>
+    <production>
+      <rule_reference ruleName="variable-declaration-head"/>
+      <rule_reference ruleName="variable-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="willSet-didSet-block"/>
+    </production>
+    <production>
+      <rule_reference ruleName="variable-declaration-head"/>
+      <rule_reference ruleName="variable-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="initializer"/>
+      <rule_reference ruleName="willSet-didSet-block"/>
+    </production>
+  </rule>
+  <rule name="variable-declaration-head">
+    <production>
+      <keyword token="var"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="var"/>
+    </production>
+    <production>
+      <rule_reference ruleName="declaration-modifiers"/>
+      <keyword token="var"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="declaration-modifiers"/>
+      <keyword token="var"/>
+    </production>
+  </rule>
+  <rule name="variable-name">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+  </rule>
+  <rule name="getter-setter-block">
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="getter-clause"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="getter-clause"/>
+      <rule_reference ruleName="setter-clause"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="setter-clause"/>
+      <rule_reference ruleName="getter-clause"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="getter-clause">
+    <production>
+      <keyword token="get"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="get"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+  </rule>
+  <rule name="setter-clause">
+    <production>
+      <keyword token="set"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="set"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="set"/>
+      <rule_reference ruleName="setter-name"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="set"/>
+      <rule_reference ruleName="setter-name"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+  </rule>
+  <rule name="setter-name">
+    <production>
+      <keyword token="("/>
+      <rule_reference ruleName="identifier"/>
+      <keyword token=")"/>
+    </production>
+  </rule>
+  <rule name="getter-setter-keyword-block">
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="getter-keyword-clause"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="getter-keyword-clause"/>
+      <rule_reference ruleName="setter-keyword-clause"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="setter-keyword-clause"/>
+      <rule_reference ruleName="getter-keyword-clause"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="getter-keyword-clause">
+    <production>
+      <keyword token="get"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="get"/>
+    </production>
+  </rule>
+  <rule name="setter-keyword-clause">
+    <production>
+      <keyword token="set"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="set"/>
+    </production>
+  </rule>
+  <rule name="willSet-didSet-block">
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="willSet-clause"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="willSet-clause"/>
+      <rule_reference ruleName="didSet-clause"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="didSet-clause"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="didSet-clause"/>
+      <rule_reference ruleName="willSet-clause"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="willSet-clause">
+    <production>
+      <keyword token="willSet"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="willSet"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="willSet"/>
+      <rule_reference ruleName="setter-name"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="willSet"/>
+      <rule_reference ruleName="setter-name"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+  </rule>
+  <rule name="didSet-clause">
+    <production>
+      <keyword token="didSet"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="didSet"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <keyword token="didSet"/>
+      <rule_reference ruleName="setter-name"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="didSet"/>
+      <rule_reference ruleName="setter-name"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+  </rule>
+  <rule name="typealias-declaration">
+    <production>
+      <rule_reference ruleName="typealias-head"/>
+      <rule_reference ruleName="typealias-assignment"/>
+    </production>
+  </rule>
+  <rule name="typealias-head">
+    <production>
+      <keyword token="typealias"/>
+      <rule_reference ruleName="typealias-name"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="typealias"/>
+      <rule_reference ruleName="typealias-name"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="typealias"/>
+      <rule_reference ruleName="typealias-name"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="typealias"/>
+      <rule_reference ruleName="typealias-name"/>
+    </production>
+  </rule>
+  <rule name="typealias-name">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+  </rule>
+  <rule name="typealias-assignment">
+    <production>
+      <keyword token="="/>
+      <rule_reference ruleName="type"/>
+    </production>
+  </rule>
+  <rule name="function-declaration">
+    <production>
+      <rule_reference ruleName="function-head"/>
+      <rule_reference ruleName="function-name"/>
+      <rule_reference ruleName="function-signature"/>
+      <rule_reference ruleName="function-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="function-head"/>
+      <rule_reference ruleName="function-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="function-signature"/>
+      <rule_reference ruleName="function-body"/>
+    </production>
+  </rule>
+  <rule name="function-head">
+    <production>
+      <keyword token="func"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="func"/>
+    </production>
+    <production>
+      <rule_reference ruleName="declaration-modifiers"/>
+      <keyword token="func"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="declaration-modifiers"/>
+      <keyword token="func"/>
+    </production>
+  </rule>
+  <rule name="function-name">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+    <production>
+      <rule_reference ruleName="operator"/>
+    </production>
+  </rule>
+  <rule name="function-signature">
+    <production>
+      <rule_reference ruleName="parameter-clauses"/>
+    </production>
+    <production>
+      <rule_reference ruleName="parameter-clauses"/>
+      <rule_reference ruleName="function-result"/>
+    </production>
+  </rule>
+  <rule name="function-result">
+    <production>
+      <keyword token="-&gt;"/>
+      <rule_reference ruleName="type"/>
+    </production>
+    <production>
+      <keyword token="-&gt;"/>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="type"/>
+    </production>
+  </rule>
+  <rule name="function-body">
+    <production>
+      <rule_reference ruleName="code-block"/>
+    </production>
+  </rule>
+  <rule name="parameter-clauses">
+    <production>
+      <rule_reference ruleName="parameter-clause"/>
+    </production>
+    <production>
+      <rule_reference ruleName="parameter-clause"/>
+      <rule_reference ruleName="parameter-clauses"/>
+    </production>
+  </rule>
+  <rule name="parameter-clause">
+    <production>
+      <keyword token="("/>
+      <keyword token=")"/>
+    </production>
+    <production>
+      <keyword token="("/>
+      <rule_reference ruleName="parameter-list"/>
+      <keyword token=")"/>
+    </production>
+    <production>
+      <keyword token="("/>
+      <rule_reference ruleName="parameter-list"/>
+      <keyword token="..."/>
+      <keyword token=")"/>
+    </production>
+  </rule>
+  <rule name="parameter-list">
+    <production>
+      <rule_reference ruleName="parameter"/>
+    </production>
+    <production>
+      <rule_reference ruleName="parameter"/>
+      <keyword token=","/>
+      <rule_reference ruleName="parameter-list"/>
+    </production>
+  </rule>
+  <rule name="parameter">
+    <production>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="let"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="let"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token=""/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token=""/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="let"/>
+      <keyword token=""/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="let"/>
+      <keyword token=""/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="let"/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="let"/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token=""/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token=""/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="let"/>
+      <keyword token=""/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="let"/>
+      <keyword token=""/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="let"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="let"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token=""/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token=""/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="let"/>
+      <keyword token=""/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="let"/>
+      <keyword token=""/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="let"/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="let"/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token=""/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token=""/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="let"/>
+      <keyword token=""/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="let"/>
+      <keyword token=""/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="var"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="var"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="var"/>
+      <keyword token=""/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="var"/>
+      <keyword token=""/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="var"/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="var"/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="var"/>
+      <keyword token=""/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="var"/>
+      <keyword token=""/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="var"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="var"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="var"/>
+      <keyword token=""/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="var"/>
+      <keyword token=""/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="var"/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="var"/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="var"/>
+      <keyword token=""/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <keyword token="var"/>
+      <keyword token=""/>
+      <rule_reference ruleName="external-parameter-name"/>
+      <rule_reference ruleName="local-parameter-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="default-argument-clause"/>
+    </production>
+    <production>
+      <rule_reference ruleName="type"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="type"/>
+    </production>
+  </rule>
+  <rule name="external-parameter-name">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+    <production>
+      <keyword token="_"/>
+    </production>
+  </rule>
+  <rule name="local-parameter-name">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+    <production>
+      <keyword token="_"/>
+    </production>
+  </rule>
+  <rule name="default-argument-clause">
+    <production>
+      <keyword token="="/>
+      <rule_reference ruleName="expression"/>
+    </production>
+  </rule>
+  <rule name="enum-declaration">
+    <production>
+      <rule_reference ruleName="union-style-enum"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="union-style-enum"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <rule_reference ruleName="union-style-enum"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="access-level-modifier"/>
+      <rule_reference ruleName="union-style-enum"/>
+    </production>
+    <production>
+      <rule_reference ruleName="raw-value-style-enum"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="raw-value-style-enum"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <rule_reference ruleName="raw-value-style-enum"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="access-level-modifier"/>
+      <rule_reference ruleName="raw-value-style-enum"/>
+    </production>
+  </rule>
+  <rule name="union-style-enum">
+    <production>
+      <keyword token="enum"/>
+      <rule_reference ruleName="enum-name"/>
+      <keyword token="{"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="enum"/>
+      <rule_reference ruleName="enum-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <keyword token="{"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="enum"/>
+      <rule_reference ruleName="enum-name"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <keyword token="{"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="enum"/>
+      <rule_reference ruleName="enum-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <keyword token="{"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="enum"/>
+      <rule_reference ruleName="enum-name"/>
+      <keyword token="{"/>
+      <rule_reference ruleName="union-style-enum-members"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="enum"/>
+      <rule_reference ruleName="enum-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <keyword token="{"/>
+      <rule_reference ruleName="union-style-enum-members"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="enum"/>
+      <rule_reference ruleName="enum-name"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <keyword token="{"/>
+      <rule_reference ruleName="union-style-enum-members"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="enum"/>
+      <rule_reference ruleName="enum-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <keyword token="{"/>
+      <rule_reference ruleName="union-style-enum-members"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="union-style-enum-members">
+    <production>
+      <rule_reference ruleName="union-style-enum-member"/>
+    </production>
+    <production>
+      <rule_reference ruleName="union-style-enum-member"/>
+      <rule_reference ruleName="union-style-enum-members"/>
+    </production>
+  </rule>
+  <rule name="union-style-enum-member">
+    <production>
+      <rule_reference ruleName="declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="union-style-enum-case-clause"/>
+    </production>
+  </rule>
+  <rule name="union-style-enum-case-clause">
+    <production>
+      <keyword token="case"/>
+      <rule_reference ruleName="union-style-enum-case-list"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="case"/>
+      <rule_reference ruleName="union-style-enum-case-list"/>
+    </production>
+  </rule>
+  <rule name="union-style-enum-case-list">
+    <production>
+      <rule_reference ruleName="union-style-enum-case"/>
+    </production>
+    <production>
+      <rule_reference ruleName="union-style-enum-case"/>
+      <keyword token=","/>
+      <rule_reference ruleName="union-style-enum-case-list"/>
+    </production>
+  </rule>
+  <rule name="union-style-enum-case">
+    <production>
+      <rule_reference ruleName="enum-case-name"/>
+    </production>
+    <production>
+      <rule_reference ruleName="enum-case-name"/>
+      <rule_reference ruleName="tuple-type"/>
+    </production>
+  </rule>
+  <rule name="enum-name">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+  </rule>
+  <rule name="enum-case-name">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+  </rule>
+  <rule name="raw-value-style-enum">
+    <production>
+      <keyword token="enum"/>
+      <rule_reference ruleName="enum-name"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <keyword token="{"/>
+      <rule_reference ruleName="raw-value-style-enum-members"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="enum"/>
+      <rule_reference ruleName="enum-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <keyword token="{"/>
+      <rule_reference ruleName="raw-value-style-enum-members"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="raw-value-style-enum-members">
+    <production>
+      <rule_reference ruleName="raw-value-style-enum-member"/>
+    </production>
+    <production>
+      <rule_reference ruleName="raw-value-style-enum-member"/>
+      <rule_reference ruleName="raw-value-style-enum-members"/>
+    </production>
+  </rule>
+  <rule name="raw-value-style-enum-member">
+    <production>
+      <rule_reference ruleName="declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="raw-value-style-enum-case-clause"/>
+    </production>
+  </rule>
+  <rule name="raw-value-style-enum-case-clause">
+    <production>
+      <keyword token="case"/>
+      <rule_reference ruleName="raw-value-style-enum-case-list"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="case"/>
+      <rule_reference ruleName="raw-value-style-enum-case-list"/>
+    </production>
+  </rule>
+  <rule name="raw-value-style-enum-case-list">
+    <production>
+      <rule_reference ruleName="raw-value-style-enum-case"/>
+    </production>
+    <production>
+      <rule_reference ruleName="raw-value-style-enum-case"/>
+      <keyword token=","/>
+      <rule_reference ruleName="raw-value-style-enum-case-list"/>
+    </production>
+  </rule>
+  <rule name="raw-value-style-enum-case">
+    <production>
+      <rule_reference ruleName="enum-case-name"/>
+    </production>
+    <production>
+      <rule_reference ruleName="enum-case-name"/>
+      <rule_reference ruleName="raw-value-assignment"/>
+    </production>
+  </rule>
+  <rule name="raw-value-assignment">
+    <production>
+      <keyword token="="/>
+      <rule_reference ruleName="raw-value-literal"/>
+    </production>
+  </rule>
+  <rule name="raw-value-literal">
+    <production>
+      <rule_reference ruleName="numeric-literal"/>
+    </production>
+    <production>
+      <rule_reference ruleName="string-literal"/>
+    </production>
+    <production>
+      <rule_reference ruleName="boolean-literal"/>
+    </production>
+  </rule>
+  <rule name="struct-declaration">
+    <production>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+    <production>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+    <production>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+    <production>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="struct"/>
+      <rule_reference ruleName="struct-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="struct-body"/>
+    </production>
+  </rule>
+  <rule name="struct-name">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+  </rule>
+  <rule name="struct-body">
+    <production>
+      <keyword token="{"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="declarations"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="class-declaration">
+    <production>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+    <production>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+    <production>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+    <production>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="class"/>
+      <rule_reference ruleName="class-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="class-body"/>
+    </production>
+  </rule>
+  <rule name="class-name">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+  </rule>
+  <rule name="class-body">
+    <production>
+      <keyword token="{"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="declarations"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="protocol-declaration">
+    <production>
+      <keyword token="protocol"/>
+      <rule_reference ruleName="protocol-name"/>
+      <rule_reference ruleName="protocol-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="protocol"/>
+      <rule_reference ruleName="protocol-name"/>
+      <rule_reference ruleName="protocol-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="protocol"/>
+      <rule_reference ruleName="protocol-name"/>
+      <rule_reference ruleName="protocol-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="protocol"/>
+      <rule_reference ruleName="protocol-name"/>
+      <rule_reference ruleName="protocol-body"/>
+    </production>
+    <production>
+      <keyword token="protocol"/>
+      <rule_reference ruleName="protocol-name"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="protocol-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="protocol"/>
+      <rule_reference ruleName="protocol-name"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="protocol-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="protocol"/>
+      <rule_reference ruleName="protocol-name"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="protocol-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="protocol"/>
+      <rule_reference ruleName="protocol-name"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="protocol-body"/>
+    </production>
+  </rule>
+  <rule name="protocol-name">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+  </rule>
+  <rule name="protocol-body">
+    <production>
+      <keyword token="{"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="protocol-member-declarations"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="protocol-member-declaration">
+    <production>
+      <rule_reference ruleName="protocol-property-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="protocol-method-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="protocol-initializer-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="protocol-subscript-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="protocol-associated-type-declaration"/>
+    </production>
+  </rule>
+  <rule name="protocol-member-declarations">
+    <production>
+      <rule_reference ruleName="protocol-member-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="protocol-member-declaration"/>
+      <rule_reference ruleName="protocol-member-declarations"/>
+    </production>
+  </rule>
+  <rule name="protocol-property-declaration">
+    <production>
+      <rule_reference ruleName="variable-declaration-head"/>
+      <rule_reference ruleName="variable-name"/>
+      <rule_reference ruleName="type-annotation"/>
+      <rule_reference ruleName="getter-setter-keyword-block"/>
+    </production>
+  </rule>
+  <rule name="protocol-method-declaration">
+    <production>
+      <rule_reference ruleName="function-head"/>
+      <rule_reference ruleName="function-name"/>
+      <rule_reference ruleName="function-signature"/>
+    </production>
+    <production>
+      <rule_reference ruleName="function-head"/>
+      <rule_reference ruleName="function-name"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="function-signature"/>
+    </production>
+  </rule>
+  <rule name="protocol-initializer-declaration">
+    <production>
+      <rule_reference ruleName="initializer-head"/>
+      <rule_reference ruleName="parameter-clause"/>
+    </production>
+    <production>
+      <rule_reference ruleName="initializer-head"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="parameter-clause"/>
+    </production>
+  </rule>
+  <rule name="protocol-subscript-declaration">
+    <production>
+      <rule_reference ruleName="subscript-head"/>
+      <rule_reference ruleName="subscript-result"/>
+      <rule_reference ruleName="getter-setter-keyword-block"/>
+    </production>
+  </rule>
+  <rule name="protocol-associated-type-declaration">
+    <production>
+      <rule_reference ruleName="typealias-head"/>
+    </production>
+    <production>
+      <rule_reference ruleName="typealias-head"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+    </production>
+    <production>
+      <rule_reference ruleName="typealias-head"/>
+      <rule_reference ruleName="typealias-assignment"/>
+    </production>
+    <production>
+      <rule_reference ruleName="typealias-head"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="typealias-assignment"/>
+    </production>
+  </rule>
+  <rule name="initializer-declaration">
+    <production>
+      <rule_reference ruleName="initializer-head"/>
+      <rule_reference ruleName="parameter-clause"/>
+      <rule_reference ruleName="initializer-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="initializer-head"/>
+      <rule_reference ruleName="generic-parameter-clause"/>
+      <rule_reference ruleName="parameter-clause"/>
+      <rule_reference ruleName="initializer-body"/>
+    </production>
+  </rule>
+  <rule name="initializer-head">
+    <production>
+      <keyword token="init"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="init"/>
+    </production>
+    <production>
+      <rule_reference ruleName="declaration-modifiers"/>
+      <keyword token="init"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="declaration-modifiers"/>
+      <keyword token="init"/>
+    </production>
+    <production>
+      <keyword token="init"/>
+      <keyword token="?"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="init"/>
+      <keyword token="?"/>
+    </production>
+    <production>
+      <rule_reference ruleName="declaration-modifiers"/>
+      <keyword token="init"/>
+      <keyword token="?"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="declaration-modifiers"/>
+      <keyword token="init"/>
+      <keyword token="?"/>
+    </production>
+    <production>
+      <keyword token="init"/>
+      <keyword token="!"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="init"/>
+      <keyword token="!"/>
+    </production>
+    <production>
+      <rule_reference ruleName="declaration-modifiers"/>
+      <keyword token="init"/>
+      <keyword token="!"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="declaration-modifiers"/>
+      <keyword token="init"/>
+      <keyword token="!"/>
+    </production>
+  </rule>
+  <rule name="initializer-body">
+    <production>
+      <rule_reference ruleName="code-block"/>
+    </production>
+  </rule>
+  <rule name="deinitializer-declaration">
+    <production>
+      <keyword token="deinit"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="deinit"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+  </rule>
+  <rule name="extension-declaration">
+    <production>
+      <keyword token="extension"/>
+      <rule_reference ruleName="type-identifier"/>
+      <rule_reference ruleName="extension-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="extension"/>
+      <rule_reference ruleName="type-identifier"/>
+      <rule_reference ruleName="extension-body"/>
+    </production>
+    <production>
+      <keyword token="extension"/>
+      <rule_reference ruleName="type-identifier"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="extension-body"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <keyword token="extension"/>
+      <rule_reference ruleName="type-identifier"/>
+      <rule_reference ruleName="type-inheritance-clause"/>
+      <rule_reference ruleName="extension-body"/>
+    </production>
+  </rule>
+  <rule name="extension-body">
+    <production>
+      <keyword token="{"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="declarations"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="subscript-declaration">
+    <production>
+      <rule_reference ruleName="subscript-head"/>
+      <rule_reference ruleName="subscript-result"/>
+      <rule_reference ruleName="code-block"/>
+    </production>
+    <production>
+      <rule_reference ruleName="subscript-head"/>
+      <rule_reference ruleName="subscript-result"/>
+      <rule_reference ruleName="getter-setter-block"/>
+    </production>
+    <production>
+      <rule_reference ruleName="subscript-head"/>
+      <rule_reference ruleName="subscript-result"/>
+      <rule_reference ruleName="getter-setter-keyword-block"/>
+    </production>
+  </rule>
+  <rule name="subscript-head">
+    <production>
+      <keyword token="subscript"/>
+      <rule_reference ruleName="parameter-clause"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="subscript"/>
+      <rule_reference ruleName="parameter-clause"/>
+    </production>
+    <production>
+      <rule_reference ruleName="declaration-modifiers"/>
+      <keyword token="subscript"/>
+      <rule_reference ruleName="parameter-clause"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="declaration-modifiers"/>
+      <keyword token="subscript"/>
+      <rule_reference ruleName="parameter-clause"/>
+    </production>
+  </rule>
+  <rule name="subscript-result">
+    <production>
+      <keyword token="-&gt;"/>
+      <rule_reference ruleName="type"/>
+    </production>
+    <production>
+      <keyword token="-&gt;"/>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="type"/>
+    </production>
+  </rule>
+  <rule name="operator-declaration">
+    <production>
+      <rule_reference ruleName="prefix-operator-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="postfix-operator-declaration"/>
+    </production>
+    <production>
+      <rule_reference ruleName="infix-operator-declaration"/>
+    </production>
+  </rule>
+  <rule name="prefix-operator-declaration">
+    <production>
+      <keyword token="prefix"/>
+      <keyword token="operator"/>
+      <rule_reference ruleName="operator"/>
+      <keyword token="{"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="postfix-operator-declaration">
+    <production>
+      <keyword token="postfix"/>
+      <keyword token="operator"/>
+      <rule_reference ruleName="operator"/>
+      <keyword token="{"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="infix-operator-declaration">
+    <production>
+      <keyword token="infix"/>
+      <keyword token="operator"/>
+      <rule_reference ruleName="operator"/>
+      <keyword token="{"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="infix"/>
+      <keyword token="operator"/>
+      <rule_reference ruleName="operator"/>
+      <keyword token="{"/>
+      <rule_reference ruleName="infix-operator-attributes"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="infix-operator-attributes">
+    <production/>
+    <production>
+      <rule_reference ruleName="precedence-clause"/>
+    </production>
+    <production>
+      <rule_reference ruleName="associativity-clause"/>
+    </production>
+    <production>
+      <rule_reference ruleName="precedence-clause"/>
+      <rule_reference ruleName="associativity-clause"/>
+    </production>
+  </rule>
+  <rule name="precedence-clause">
+    <production>
+      <keyword token="precedence"/>
+      <rule_reference ruleName="precedence-level"/>
+    </production>
+  </rule>
+  <rule name="precedence-level">
+    <production>
+      <literal>A decimal integer between 0 and 255, inclusive</literal>
+    </production>
+  </rule>
+  <rule name="associativity-clause">
+    <production>
+      <keyword token="associativity"/>
+      <rule_reference ruleName="associativity"/>
+    </production>
+  </rule>
+  <rule name="associativity">
+    <production>
+      <keyword token="left"/>
+    </production>
+    <production>
+      <keyword token="right"/>
+    </production>
+    <production>
+      <keyword token="none"/>
+    </production>
+  </rule>
+  <rule name="declaration-modifier">
+    <production>
+      <keyword token="class"/>
+    </production>
+    <production>
+      <keyword token="convenience"/>
+    </production>
+    <production>
+      <keyword token="dynamic"/>
+    </production>
+    <production>
+      <keyword token="final"/>
+    </production>
+    <production>
+      <keyword token="infix"/>
+    </production>
+    <production>
+      <keyword token="lazy"/>
+    </production>
+    <production>
+      <keyword token="mutating"/>
+    </production>
+    <production>
+      <keyword token="nonmutating"/>
+    </production>
+    <production>
+      <keyword token="optional"/>
+    </production>
+    <production>
+      <keyword token="override"/>
+    </production>
+    <production>
+      <keyword token="postfix"/>
+    </production>
+    <production>
+      <keyword token="prefix"/>
+    </production>
+    <production>
+      <keyword token="required"/>
+    </production>
+    <production>
+      <keyword token="static"/>
+    </production>
+    <production>
+      <keyword token="unowned"/>
+    </production>
+    <production>
+      <keyword token="unowned"/>
+      <keyword token="("/>
+      <keyword token="safe"/>
+      <keyword token=")"/>
+    </production>
+    <production>
+      <keyword token="unowned"/>
+      <keyword token="("/>
+      <keyword token="unsafe"/>
+      <keyword token=")"/>
+    </production>
+    <production>
+      <keyword token="weak"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+    </production>
+  </rule>
+  <rule name="declaration-modifiers">
+    <production>
+      <rule_reference ruleName="declaration-modifier"/>
+    </production>
+    <production>
+      <rule_reference ruleName="declaration-modifier"/>
+      <rule_reference ruleName="declaration-modifiers"/>
+    </production>
+  </rule>
+  <rule name="access-level-modifier">
+    <production>
+      <keyword token="internal"/>
+    </production>
+    <production>
+      <keyword token="internal"/>
+      <keyword token="("/>
+      <keyword token="set"/>
+      <keyword token=")"/>
+    </production>
+    <production>
+      <keyword token="private"/>
+    </production>
+    <production>
+      <keyword token="private"/>
+      <keyword token="("/>
+      <keyword token="set"/>
+      <keyword token=")"/>
+    </production>
+    <production>
+      <keyword token="public"/>
+    </production>
+    <production>
+      <keyword token="public"/>
+      <keyword token="("/>
+      <keyword token="set"/>
+      <keyword token=")"/>
+    </production>
+  </rule>
+  <rule name="access-level-modifiers">
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+    </production>
+    <production>
+      <rule_reference ruleName="access-level-modifier"/>
+      <rule_reference ruleName="access-level-modifiers"/>
+    </production>
+  </rule>
+  <rule name="pattern">
+    <production>
+      <rule_reference ruleName="wildcard-pattern"/>
+    </production>
+    <production>
+      <rule_reference ruleName="wildcard-pattern"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <rule_reference ruleName="identifier-pattern"/>
+    </production>
+    <production>
+      <rule_reference ruleName="identifier-pattern"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <rule_reference ruleName="value-binding-pattern"/>
+    </production>
+    <production>
+      <rule_reference ruleName="tuple-pattern"/>
+    </production>
+    <production>
+      <rule_reference ruleName="tuple-pattern"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <rule_reference ruleName="enum-case-pattern"/>
+    </production>
+    <production>
+      <rule_reference ruleName="type-casting-pattern"/>
+    </production>
+    <production>
+      <rule_reference ruleName="expression-pattern"/>
+    </production>
+  </rule>
+  <rule name="wildcard-pattern">
+    <production>
+      <keyword token="_"/>
+    </production>
+  </rule>
+  <rule name="identifier-pattern">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+  </rule>
+  <rule name="value-binding-pattern">
+    <production>
+      <keyword token="var"/>
+      <rule_reference ruleName="pattern"/>
+    </production>
+    <production>
+      <keyword token="let"/>
+      <rule_reference ruleName="pattern"/>
+    </production>
+  </rule>
+  <rule name="tuple-pattern">
+    <production>
+      <keyword token="("/>
+      <keyword token=")"/>
+    </production>
+    <production>
+      <keyword token="("/>
+      <rule_reference ruleName="tuple-pattern-element-list"/>
+      <keyword token=")"/>
+    </production>
+  </rule>
+  <rule name="tuple-pattern-element-list">
+    <production>
+      <rule_reference ruleName="tuple-pattern-element"/>
+    </production>
+    <production>
+      <rule_reference ruleName="tuple-pattern-element"/>
+      <keyword token=","/>
+      <rule_reference ruleName="tuple-pattern-element-list"/>
+    </production>
+  </rule>
+  <rule name="tuple-pattern-element">
+    <production>
+      <rule_reference ruleName="pattern"/>
+    </production>
+  </rule>
+  <rule name="enum-case-pattern">
+    <production>
+      <keyword token="."/>
+      <rule_reference ruleName="enum-case-name"/>
+    </production>
+    <production>
+      <rule_reference ruleName="type-identifier"/>
+      <keyword token="."/>
+      <rule_reference ruleName="enum-case-name"/>
+    </production>
+    <production>
+      <keyword token="."/>
+      <rule_reference ruleName="enum-case-name"/>
+      <rule_reference ruleName="tuple-pattern"/>
+    </production>
+    <production>
+      <rule_reference ruleName="type-identifier"/>
+      <keyword token="."/>
+      <rule_reference ruleName="enum-case-name"/>
+      <rule_reference ruleName="tuple-pattern"/>
+    </production>
+  </rule>
+  <rule name="type-casting-pattern">
+    <production>
+      <rule_reference ruleName="is-pattern"/>
+    </production>
+    <production>
+      <rule_reference ruleName="as-pattern"/>
+    </production>
+  </rule>
+  <rule name="is-pattern">
+    <production>
+      <keyword token="is"/>
+      <rule_reference ruleName="type"/>
+    </production>
+  </rule>
+  <rule name="as-pattern">
+    <production>
+      <rule_reference ruleName="pattern"/>
+      <keyword token="as"/>
+      <rule_reference ruleName="type"/>
+    </production>
+  </rule>
+  <rule name="expression-pattern">
+    <production>
+      <rule_reference ruleName="expression"/>
+    </production>
+  </rule>
+  <rule name="attribute">
+    <production>
+      <keyword token=""/>
+      <rule_reference ruleName="attribute-name"/>
+    </production>
+    <production>
+      <keyword token=""/>
+      <rule_reference ruleName="attribute-name"/>
+      <rule_reference ruleName="attribute-argument-clause"/>
+    </production>
+  </rule>
+  <rule name="attribute-name">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+  </rule>
+  <rule name="attribute-argument-clause">
+    <production>
+      <keyword token="("/>
+      <keyword token=")"/>
+    </production>
+    <production>
+      <keyword token="("/>
+      <rule_reference ruleName="balanced-tokens"/>
+      <keyword token=")"/>
+    </production>
+  </rule>
+  <rule name="attributes">
+    <production>
+      <rule_reference ruleName="attribute"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attribute"/>
+      <rule_reference ruleName="attributes"/>
+    </production>
+  </rule>
+  <rule name="balanced-tokens">
+    <production>
+      <rule_reference ruleName="balanced-token"/>
+    </production>
+    <production>
+      <rule_reference ruleName="balanced-token"/>
+      <rule_reference ruleName="balanced-tokens"/>
+    </production>
+  </rule>
+  <rule name="balanced-token">
+    <production>
+      <keyword token="("/>
+      <keyword token=")"/>
+    </production>
+    <production>
+      <keyword token="("/>
+      <rule_reference ruleName="balanced-tokens"/>
+      <keyword token=")"/>
+    </production>
+    <production>
+      <keyword token="["/>
+      <keyword token="]"/>
+    </production>
+    <production>
+      <keyword token="["/>
+      <rule_reference ruleName="balanced-tokens"/>
+      <keyword token="]"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="balanced-tokens"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <literal>Any identifier, keyword, literal, or operator</literal>
+    </production>
+    <production>
+      <literal>Any punctuation except </literal>
+    </production>
+  </rule>
+  <rule name="expression">
+    <production>
+      <rule_reference ruleName="prefix-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="prefix-expression"/>
+      <rule_reference ruleName="binary-expressions"/>
+    </production>
+  </rule>
+  <rule name="expression-list">
+    <production>
+      <rule_reference ruleName="expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="expression"/>
+      <keyword token=","/>
+      <rule_reference ruleName="expression-list"/>
+    </production>
+  </rule>
+  <rule name="prefix-expression">
+    <production>
+      <rule_reference ruleName="postfix-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="prefix-operator"/>
+      <rule_reference ruleName="postfix-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="in-out-expression"/>
+    </production>
+  </rule>
+  <rule name="in-out-expression">
+    <production>
+      <keyword token="&amp;"/>
+      <rule_reference ruleName="identifier"/>
+    </production>
+  </rule>
+  <rule name="binary-expression">
+    <production>
+      <rule_reference ruleName="binary-operator"/>
+      <rule_reference ruleName="prefix-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="assignment-operator"/>
+      <rule_reference ruleName="prefix-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="conditional-operator"/>
+      <rule_reference ruleName="prefix-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="type-casting-operator"/>
+    </production>
+  </rule>
+  <rule name="binary-expressions">
+    <production>
+      <rule_reference ruleName="binary-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="binary-expression"/>
+      <rule_reference ruleName="binary-expressions"/>
+    </production>
+  </rule>
+  <rule name="assignment-operator">
+    <production>
+      <keyword token="="/>
+    </production>
+  </rule>
+  <rule name="conditional-operator">
+    <production>
+      <keyword token="?"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token=":"/>
+    </production>
+  </rule>
+  <rule name="type-casting-operator">
+    <production>
+      <keyword token="is"/>
+      <rule_reference ruleName="type"/>
+    </production>
+    <production>
+      <keyword token="as"/>
+      <rule_reference ruleName="type"/>
+    </production>
+    <production>
+      <keyword token="as"/>
+      <keyword token="?"/>
+      <rule_reference ruleName="type"/>
+    </production>
+    <production>
+      <keyword token="as"/>
+      <keyword token="!"/>
+      <rule_reference ruleName="type"/>
+    </production>
+  </rule>
+  <rule name="primary-expression">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+    <production>
+      <rule_reference ruleName="identifier"/>
+      <rule_reference ruleName="generic-argument-clause"/>
+    </production>
+    <production>
+      <rule_reference ruleName="literal-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="self-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="superclass-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="closure-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="parenthesized-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="implicit-member-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="wildcard-expression"/>
+    </production>
+  </rule>
+  <rule name="literal-expression">
+    <production>
+      <rule_reference ruleName="literal"/>
+    </production>
+    <production>
+      <rule_reference ruleName="array-literal"/>
+    </production>
+    <production>
+      <rule_reference ruleName="dictionary-literal"/>
+    </production>
+    <production>
+      <keyword token="__FILE__"/>
+    </production>
+    <production>
+      <keyword token="__LINE__"/>
+    </production>
+    <production>
+      <keyword token="__COLUMN__"/>
+    </production>
+    <production>
+      <keyword token="__FUNCTION__"/>
+    </production>
+  </rule>
+  <rule name="array-literal">
+    <production>
+      <keyword token="["/>
+      <keyword token="]"/>
+    </production>
+    <production>
+      <keyword token="["/>
+      <rule_reference ruleName="array-literal-items"/>
+      <keyword token="]"/>
+    </production>
+  </rule>
+  <rule name="array-literal-items">
+    <production>
+      <rule_reference ruleName="array-literal-item"/>
+    </production>
+    <production>
+      <rule_reference ruleName="array-literal-item"/>
+      <keyword token=","/>
+    </production>
+    <production>
+      <rule_reference ruleName="array-literal-item"/>
+      <keyword token=","/>
+      <rule_reference ruleName="array-literal-items"/>
+    </production>
+  </rule>
+  <rule name="array-literal-item">
+    <production>
+      <rule_reference ruleName="expression"/>
+    </production>
+  </rule>
+  <rule name="dictionary-literal">
+    <production>
+      <keyword token="["/>
+      <rule_reference ruleName="dictionary-literal-items"/>
+      <keyword token="]"/>
+    </production>
+    <production>
+      <keyword token="["/>
+      <keyword token=":"/>
+      <keyword token="]"/>
+    </production>
+  </rule>
+  <rule name="dictionary-literal-items">
+    <production>
+      <rule_reference ruleName="dictionary-literal-item"/>
+    </production>
+    <production>
+      <rule_reference ruleName="dictionary-literal-item"/>
+      <keyword token=","/>
+    </production>
+    <production>
+      <rule_reference ruleName="dictionary-literal-item"/>
+      <keyword token=","/>
+      <rule_reference ruleName="dictionary-literal-items"/>
+    </production>
+  </rule>
+  <rule name="dictionary-literal-item">
+    <production>
+      <rule_reference ruleName="expression"/>
+      <keyword token=":"/>
+      <rule_reference ruleName="expression"/>
+    </production>
+  </rule>
+  <rule name="self-expression">
+    <production>
+      <keyword token="self"/>
+    </production>
+    <production>
+      <keyword token="self"/>
+      <keyword token="."/>
+      <rule_reference ruleName="identifier"/>
+    </production>
+    <production>
+      <keyword token="self"/>
+      <keyword token="["/>
+      <rule_reference ruleName="expression"/>
+      <keyword token="]"/>
+    </production>
+    <production>
+      <keyword token="self"/>
+      <keyword token="."/>
+      <keyword token="init"/>
+    </production>
+  </rule>
+  <rule name="superclass-expression">
+    <production>
+      <rule_reference ruleName="superclass-method-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="superclass-subscript-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="superclass-initializer-expression"/>
+    </production>
+  </rule>
+  <rule name="superclass-method-expression">
+    <production>
+      <keyword token="super"/>
+      <keyword token="."/>
+      <rule_reference ruleName="identifier"/>
+    </production>
+  </rule>
+  <rule name="superclass-subscript-expression">
+    <production>
+      <keyword token="super"/>
+      <keyword token="["/>
+      <rule_reference ruleName="expression"/>
+      <keyword token="]"/>
+    </production>
+  </rule>
+  <rule name="superclass-initializer-expression">
+    <production>
+      <keyword token="super"/>
+      <keyword token="."/>
+      <keyword token="init"/>
+    </production>
+  </rule>
+  <rule name="closure-expression">
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="statements"/>
+      <keyword token="}"/>
+    </production>
+    <production>
+      <keyword token="{"/>
+      <rule_reference ruleName="closure-signature"/>
+      <rule_reference ruleName="statements"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="closure-signature">
+    <production>
+      <rule_reference ruleName="parameter-clause"/>
+      <keyword token="in"/>
+    </production>
+    <production>
+      <rule_reference ruleName="parameter-clause"/>
+      <rule_reference ruleName="function-result"/>
+      <keyword token="in"/>
+    </production>
+    <production>
+      <rule_reference ruleName="identifier-list"/>
+      <keyword token="in"/>
+    </production>
+    <production>
+      <rule_reference ruleName="identifier-list"/>
+      <rule_reference ruleName="function-result"/>
+      <keyword token="in"/>
+    </production>
+    <production>
+      <rule_reference ruleName="capture-list"/>
+      <rule_reference ruleName="parameter-clause"/>
+      <keyword token="in"/>
+    </production>
+    <production>
+      <rule_reference ruleName="capture-list"/>
+      <rule_reference ruleName="parameter-clause"/>
+      <rule_reference ruleName="function-result"/>
+      <keyword token="in"/>
+    </production>
+    <production>
+      <rule_reference ruleName="capture-list"/>
+      <rule_reference ruleName="identifier-list"/>
+      <keyword token="in"/>
+    </production>
+    <production>
+      <rule_reference ruleName="capture-list"/>
+      <rule_reference ruleName="identifier-list"/>
+      <rule_reference ruleName="function-result"/>
+      <keyword token="in"/>
+    </production>
+    <production>
+      <rule_reference ruleName="capture-list"/>
+      <keyword token="in"/>
+    </production>
+  </rule>
+  <rule name="capture-list">
+    <production>
+      <keyword token="["/>
+      <rule_reference ruleName="capture-specifier"/>
+      <rule_reference ruleName="expression"/>
+      <keyword token="]"/>
+    </production>
+  </rule>
+  <rule name="capture-specifier">
+    <production>
+      <keyword token="weak"/>
+    </production>
+    <production>
+      <keyword token="unowned"/>
+    </production>
+    <production>
+      <keyword token="unowned(safe)"/>
+    </production>
+    <production>
+      <keyword token="unowned(unsafe)"/>
+    </production>
+  </rule>
+  <rule name="implicit-member-expression">
+    <production>
+      <keyword token="."/>
+      <rule_reference ruleName="identifier"/>
+    </production>
+  </rule>
+  <rule name="parenthesized-expression">
+    <production>
+      <keyword token="("/>
+      <keyword token=")"/>
+    </production>
+    <production>
+      <keyword token="("/>
+      <rule_reference ruleName="expression-element-list"/>
+      <keyword token=")"/>
+    </production>
+  </rule>
+  <rule name="expression-element-list">
+    <production>
+      <rule_reference ruleName="expression-element"/>
+    </production>
+    <production>
+      <rule_reference ruleName="expression-element"/>
+      <keyword token=","/>
+      <rule_reference ruleName="expression-element-list"/>
+    </production>
+  </rule>
+  <rule name="expression-element">
+    <production>
+      <rule_reference ruleName="expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="identifier"/>
+      <keyword token=":"/>
+      <rule_reference ruleName="expression"/>
+    </production>
+  </rule>
+  <rule name="wildcard-expression">
+    <production>
+      <keyword token="_"/>
+    </production>
+  </rule>
+  <rule name="postfix-expression">
+    <production>
+      <rule_reference ruleName="primary-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="postfix-expression"/>
+      <rule_reference ruleName="postfix-operator"/>
+    </production>
+    <production>
+      <rule_reference ruleName="function-call-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="initializer-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="explicit-member-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="postfix-self-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="dynamic-type-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="subscript-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="forced-value-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="optional-chaining-expression"/>
+    </production>
+  </rule>
+  <rule name="function-call-expression">
+    <production>
+      <rule_reference ruleName="postfix-expression"/>
+      <rule_reference ruleName="parenthesized-expression"/>
+    </production>
+    <production>
+      <rule_reference ruleName="postfix-expression"/>
+      <rule_reference ruleName="trailing-closure"/>
+    </production>
+    <production>
+      <rule_reference ruleName="postfix-expression"/>
+      <rule_reference ruleName="parenthesized-expression"/>
+      <rule_reference ruleName="trailing-closure"/>
+    </production>
+  </rule>
+  <rule name="trailing-closure">
+    <production>
+      <rule_reference ruleName="closure-expression"/>
+    </production>
+  </rule>
+  <rule name="initializer-expression">
+    <production>
+      <rule_reference ruleName="postfix-expression"/>
+      <keyword token="."/>
+      <keyword token="init"/>
+    </production>
+  </rule>
+  <rule name="explicit-member-expression">
+    <production>
+      <rule_reference ruleName="postfix-expression"/>
+      <keyword token="."/>
+      <rule_reference ruleName="decimal-digits"/>
+    </production>
+    <production>
+      <rule_reference ruleName="postfix-expression"/>
+      <keyword token="."/>
+      <rule_reference ruleName="identifier"/>
+    </production>
+    <production>
+      <rule_reference ruleName="postfix-expression"/>
+      <keyword token="."/>
+      <rule_reference ruleName="identifier"/>
+      <rule_reference ruleName="generic-argument-clause"/>
+    </production>
+  </rule>
+  <rule name="postfix-self-expression">
+    <production>
+      <rule_reference ruleName="postfix-expression"/>
+      <keyword token="."/>
+      <keyword token="self"/>
+    </production>
+  </rule>
+  <rule name="dynamic-type-expression">
+    <production>
+      <rule_reference ruleName="postfix-expression"/>
+      <keyword token="."/>
+      <keyword token="dynamicType"/>
+    </production>
+  </rule>
+  <rule name="subscript-expression">
+    <production>
+      <rule_reference ruleName="postfix-expression"/>
+      <keyword token="["/>
+      <rule_reference ruleName="expression-list"/>
+      <keyword token="]"/>
+    </production>
+  </rule>
+  <rule name="forced-value-expression">
+    <production>
+      <rule_reference ruleName="postfix-expression"/>
+      <keyword token="!"/>
+    </production>
+  </rule>
+  <rule name="optional-chaining-expression">
+    <production>
+      <rule_reference ruleName="postfix-expression"/>
+      <keyword token="?"/>
+    </production>
+  </rule>
+  <rule name="identifier">
+    <production>
+      <rule_reference ruleName="identifier-head"/>
+    </production>
+    <production>
+      <rule_reference ruleName="identifier-head"/>
+      <rule_reference ruleName="identifier-characters"/>
+    </production>
+    <production>
+      <keyword token=""/>
+      <rule_reference ruleName="identifier-head"/>
+      <keyword token=""/>
+    </production>
+    <production>
+      <keyword token=""/>
+      <rule_reference ruleName="identifier-head"/>
+      <rule_reference ruleName="identifier-characters"/>
+      <keyword token=""/>
+    </production>
+    <production>
+      <rule_reference ruleName="implicit-parameter-name"/>
+    </production>
+  </rule>
+  <rule name="identifier-list">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+    <production>
+      <rule_reference ruleName="identifier"/>
+      <keyword token=","/>
+      <rule_reference ruleName="identifier-list"/>
+    </production>
+  </rule>
+  <rule name="identifier-head">
+    <production>
+      <literal>Upper- or lowercase letter A through Z</literal>
+    </production>
+    <production>
+      <keyword token="_"/>
+    </production>
+    <production>
+      <literal>U+00A8, U+00AA, U+00AD, U+00AF, U+00B2U+00B5, or U+00B7U+00BA</literal>
+    </production>
+    <production>
+      <literal>U+00BCU+00BE, U+00C0U+00D6, U+00D8U+00F6, or U+00F8U+00FF</literal>
+    </production>
+    <production>
+      <literal>U+0100U+02FF, U+0370U+167F, U+1681U+180D, or U+180FU+1DBF</literal>
+    </production>
+    <production>
+      <literal>U+1E00U+1FFF</literal>
+    </production>
+    <production>
+      <literal>U+200BU+200D, U+202AU+202E, U+203FU+2040, U+2054, or U+2060U+206F</literal>
+    </production>
+    <production>
+      <literal>U+2070U+20CF, U+2100U+218F, U+2460U+24FF, or U+2776U+2793</literal>
+    </production>
+    <production>
+      <literal>U+2C00U+2DFF or U+2E80U+2FFF</literal>
+    </production>
+    <production>
+      <literal>U+3004U+3007, U+3021U+302F, U+3031U+303F, or U+3040U+D7FF</literal>
+    </production>
+    <production>
+      <literal>U+F900U+FD3D, U+FD40U+FDCF, U+FDF0U+FE1F, or U+FE30U+FE44</literal>
+    </production>
+    <production>
+      <literal>U+FE47U+FFFD</literal>
+    </production>
+    <production>
+      <literal>U+10000U+1FFFD, U+20000U+2FFFD, U+30000U+3FFFD, or U+40000U+4FFFD</literal>
+    </production>
+    <production>
+      <literal>U+50000U+5FFFD, U+60000U+6FFFD, U+70000U+7FFFD, or U+80000U+8FFFD</literal>
+    </production>
+    <production>
+      <literal>U+90000U+9FFFD, U+A0000U+AFFFD, U+B0000U+BFFFD, or U+C0000U+CFFFD</literal>
+    </production>
+    <production>
+      <literal>U+D0000U+DFFFD or U+E0000U+EFFFD</literal>
+    </production>
+  </rule>
+  <rule name="identifier-character">
+    <production>
+      <literal>Digit 0 through 9</literal>
+    </production>
+    <production>
+      <literal>U+0300U+036F, U+1DC0U+1DFF, U+20D0U+20FF, or U+FE20U+FE2F</literal>
+    </production>
+    <production>
+      <rule_reference ruleName="identifier-head"/>
+    </production>
+  </rule>
+  <rule name="identifier-characters">
+    <production>
+      <rule_reference ruleName="identifier-character"/>
+    </production>
+    <production>
+      <rule_reference ruleName="identifier-character"/>
+      <rule_reference ruleName="identifier-characters"/>
+    </production>
+  </rule>
+  <rule name="implicit-parameter-name">
+    <production>
+      <keyword token=""/>
+      <rule_reference ruleName="decimal-digits"/>
+    </production>
+  </rule>
+  <rule name="literal">
+    <production>
+      <rule_reference ruleName="numeric-literal"/>
+    </production>
+    <production>
+      <rule_reference ruleName="string-literal"/>
+    </production>
+    <production>
+      <rule_reference ruleName="boolean-literal"/>
+    </production>
+    <production>
+      <rule_reference ruleName="nil-literal"/>
+    </production>
+  </rule>
+  <rule name="numeric-literal">
+    <production>
+      <rule_reference ruleName="integer-literal"/>
+    </production>
+    <production>
+      <keyword token="-"/>
+      <rule_reference ruleName="integer-literal"/>
+    </production>
+    <production>
+      <rule_reference ruleName="floating-point-literal"/>
+    </production>
+    <production>
+      <keyword token="-"/>
+      <rule_reference ruleName="floating-point-literal"/>
+    </production>
+  </rule>
+  <rule name="boolean-literal">
+    <production>
+      <keyword token="true"/>
+    </production>
+    <production>
+      <keyword token="false"/>
+    </production>
+  </rule>
+  <rule name="nil-literal">
+    <production>
+      <keyword token="nil"/>
+    </production>
+  </rule>
+  <rule name="integer-literal">
+    <production>
+      <rule_reference ruleName="binary-literal"/>
+    </production>
+    <production>
+      <rule_reference ruleName="octal-literal"/>
+    </production>
+    <production>
+      <rule_reference ruleName="decimal-literal"/>
+    </production>
+    <production>
+      <rule_reference ruleName="hexadecimal-literal"/>
+    </production>
+  </rule>
+  <rule name="binary-literal">
+    <production>
+      <keyword token="0b"/>
+      <rule_reference ruleName="binary-digit"/>
+    </production>
+    <production>
+      <keyword token="0b"/>
+      <rule_reference ruleName="binary-digit"/>
+      <rule_reference ruleName="binary-literal-characters"/>
+    </production>
+  </rule>
+  <rule name="binary-digit">
+    <production>
+      <literal>Digit 0 or 1</literal>
+    </production>
+  </rule>
+  <rule name="binary-literal-character">
+    <production>
+      <rule_reference ruleName="binary-digit"/>
+    </production>
+    <production>
+      <keyword token="_"/>
+    </production>
+  </rule>
+  <rule name="binary-literal-characters">
+    <production>
+      <rule_reference ruleName="binary-literal-character"/>
+    </production>
+    <production>
+      <rule_reference ruleName="binary-literal-character"/>
+      <rule_reference ruleName="binary-literal-characters"/>
+    </production>
+  </rule>
+  <rule name="octal-literal">
+    <production>
+      <keyword token="0o"/>
+      <rule_reference ruleName="octal-digit"/>
+    </production>
+    <production>
+      <keyword token="0o"/>
+      <rule_reference ruleName="octal-digit"/>
+      <rule_reference ruleName="octal-literal-characters"/>
+    </production>
+  </rule>
+  <rule name="octal-digit">
+    <production>
+      <literal>Digit 0 through 7</literal>
+    </production>
+  </rule>
+  <rule name="octal-literal-character">
+    <production>
+      <rule_reference ruleName="octal-digit"/>
+    </production>
+    <production>
+      <keyword token="_"/>
+    </production>
+  </rule>
+  <rule name="octal-literal-characters">
+    <production>
+      <rule_reference ruleName="octal-literal-character"/>
+    </production>
+    <production>
+      <rule_reference ruleName="octal-literal-character"/>
+      <rule_reference ruleName="octal-literal-characters"/>
+    </production>
+  </rule>
+  <rule name="decimal-literal">
+    <production>
+      <rule_reference ruleName="decimal-digit"/>
+    </production>
+    <production>
+      <rule_reference ruleName="decimal-digit"/>
+      <rule_reference ruleName="decimal-literal-characters"/>
+    </production>
+  </rule>
+  <rule name="decimal-digit">
+    <production>
+      <literal>Digit 0 through 9</literal>
+    </production>
+  </rule>
+  <rule name="decimal-digits">
+    <production>
+      <rule_reference ruleName="decimal-digit"/>
+    </production>
+    <production>
+      <rule_reference ruleName="decimal-digit"/>
+      <rule_reference ruleName="decimal-digits"/>
+    </production>
+  </rule>
+  <rule name="decimal-literal-character">
+    <production>
+      <rule_reference ruleName="decimal-digit"/>
+    </production>
+    <production>
+      <keyword token="_"/>
+    </production>
+  </rule>
+  <rule name="decimal-literal-characters">
+    <production>
+      <rule_reference ruleName="decimal-literal-character"/>
+    </production>
+    <production>
+      <rule_reference ruleName="decimal-literal-character"/>
+      <rule_reference ruleName="decimal-literal-characters"/>
+    </production>
+  </rule>
+  <rule name="hexadecimal-literal">
+    <production>
+      <keyword token="0x"/>
+      <rule_reference ruleName="hexadecimal-digit"/>
+    </production>
+    <production>
+      <keyword token="0x"/>
+      <rule_reference ruleName="hexadecimal-digit"/>
+      <rule_reference ruleName="hexadecimal-literal-characters"/>
+    </production>
+  </rule>
+  <rule name="hexadecimal-digit">
+    <production>
+      <literal>Digit 0 through 9, a through f, or A through F</literal>
+    </production>
+  </rule>
+  <rule name="hexadecimal-literal-character">
+    <production>
+      <rule_reference ruleName="hexadecimal-digit"/>
+    </production>
+    <production>
+      <keyword token="_"/>
+    </production>
+  </rule>
+  <rule name="hexadecimal-literal-characters">
+    <production>
+      <rule_reference ruleName="hexadecimal-literal-character"/>
+    </production>
+    <production>
+      <rule_reference ruleName="hexadecimal-literal-character"/>
+      <rule_reference ruleName="hexadecimal-literal-characters"/>
+    </production>
+  </rule>
+  <rule name="floating-point-literal">
+    <production>
+      <rule_reference ruleName="decimal-literal"/>
+    </production>
+    <production>
+      <rule_reference ruleName="decimal-literal"/>
+      <rule_reference ruleName="decimal-fraction"/>
+    </production>
+    <production>
+      <rule_reference ruleName="decimal-literal"/>
+      <rule_reference ruleName="decimal-exponent"/>
+    </production>
+    <production>
+      <rule_reference ruleName="decimal-literal"/>
+      <rule_reference ruleName="decimal-fraction"/>
+      <rule_reference ruleName="decimal-exponent"/>
+    </production>
+    <production>
+      <rule_reference ruleName="hexadecimal-literal"/>
+      <rule_reference ruleName="hexadecimal-exponent"/>
+    </production>
+    <production>
+      <rule_reference ruleName="hexadecimal-literal"/>
+      <rule_reference ruleName="hexadecimal-fraction"/>
+      <rule_reference ruleName="hexadecimal-exponent"/>
+    </production>
+  </rule>
+  <rule name="decimal-fraction">
+    <production>
+      <keyword token="."/>
+      <rule_reference ruleName="decimal-literal"/>
+    </production>
+  </rule>
+  <rule name="decimal-exponent">
+    <production>
+      <rule_reference ruleName="floating-point-e"/>
+      <rule_reference ruleName="decimal-literal"/>
+    </production>
+    <production>
+      <rule_reference ruleName="floating-point-e"/>
+      <rule_reference ruleName="sign"/>
+      <rule_reference ruleName="decimal-literal"/>
+    </production>
+  </rule>
+  <rule name="hexadecimal-fraction">
+    <production>
+      <keyword token="."/>
+      <rule_reference ruleName="hexadecimal-digit"/>
+    </production>
+    <production>
+      <keyword token="."/>
+      <rule_reference ruleName="hexadecimal-digit"/>
+      <rule_reference ruleName="hexadecimal-literal-characters"/>
+    </production>
+  </rule>
+  <rule name="hexadecimal-exponent">
+    <production>
+      <rule_reference ruleName="floating-point-p"/>
+      <rule_reference ruleName="decimal-literal"/>
+    </production>
+    <production>
+      <rule_reference ruleName="floating-point-p"/>
+      <rule_reference ruleName="sign"/>
+      <rule_reference ruleName="decimal-literal"/>
+    </production>
+  </rule>
+  <rule name="floating-point-e">
+    <production>
+      <keyword token="e"/>
+    </production>
+    <production>
+      <keyword token="E"/>
+    </production>
+  </rule>
+  <rule name="floating-point-p">
+    <production>
+      <keyword token="p"/>
+    </production>
+    <production>
+      <keyword token="P"/>
+    </production>
+  </rule>
+  <rule name="sign">
+    <production>
+      <keyword token="+"/>
+    </production>
+    <production>
+      <keyword token="-"/>
+    </production>
+  </rule>
+  <rule name="string-literal">
+    <production>
+      <keyword token="&quot;"/>
+      <keyword token="&quot;"/>
+    </production>
+    <production>
+      <keyword token="&quot;"/>
+      <rule_reference ruleName="quoted-text"/>
+      <keyword token="&quot;"/>
+    </production>
+  </rule>
+  <rule name="quoted-text">
+    <production>
+      <rule_reference ruleName="quoted-text-item"/>
+    </production>
+    <production>
+      <rule_reference ruleName="quoted-text-item"/>
+      <rule_reference ruleName="quoted-text"/>
+    </production>
+  </rule>
+  <rule name="quoted-text-item">
+    <production>
+      <rule_reference ruleName="escaped-character"/>
+    </production>
+    <production>
+      <keyword token="("/>
+      <rule_reference ruleName="expression"/>
+      <keyword token=")"/>
+    </production>
+    <production>
+      <literal>Any Unicode scalar value except </literal>
+    </production>
+  </rule>
+  <rule name="escaped-character">
+    <production>
+      <keyword token="0"/>
+    </production>
+    <production>
+      <keyword token=""/>
+    </production>
+    <production>
+      <keyword token="t"/>
+    </production>
+    <production>
+      <keyword token="n"/>
+    </production>
+    <production>
+      <keyword token="r"/>
+    </production>
+    <production>
+      <keyword token="&quot;"/>
+    </production>
+    <production>
+      <keyword token=""/>
+    </production>
+    <production>
+      <keyword token="u"/>
+      <keyword token="{"/>
+      <rule_reference ruleName="unicode-scalar-digits"/>
+      <keyword token="}"/>
+    </production>
+  </rule>
+  <rule name="unicode-scalar-digits">
+    <production>
+      <literal>Between one and eight hexadecimal digits</literal>
+    </production>
+  </rule>
+  <rule name="operator">
+    <production>
+      <rule_reference ruleName="operator-head"/>
+    </production>
+    <production>
+      <rule_reference ruleName="operator-head"/>
+      <rule_reference ruleName="operator-characters"/>
+    </production>
+    <production>
+      <rule_reference ruleName="dot-operator-head"/>
+    </production>
+    <production>
+      <rule_reference ruleName="dot-operator-head"/>
+      <rule_reference ruleName="dot-operator-characters"/>
+    </production>
+  </rule>
+  <rule name="operator-head">
+    <production>
+      <keyword token="/"/>
+    </production>
+    <production>
+      <keyword token="="/>
+    </production>
+    <production>
+      <keyword token="-"/>
+    </production>
+    <production>
+      <keyword token="+"/>
+    </production>
+    <production>
+      <keyword token="!"/>
+    </production>
+    <production>
+      <keyword token="*"/>
+    </production>
+    <production>
+      <keyword token="%"/>
+    </production>
+    <production>
+      <keyword token="&lt;"/>
+    </production>
+    <production>
+      <keyword token="&gt;"/>
+    </production>
+    <production>
+      <keyword token="&amp;"/>
+    </production>
+    <production>
+      <keyword token="|"/>
+    </production>
+    <production>
+      <keyword token="^"/>
+    </production>
+    <production>
+      <keyword token="~"/>
+    </production>
+    <production>
+      <keyword token="?"/>
+    </production>
+    <production>
+      <literal>U+00A1U+00A7</literal>
+    </production>
+    <production>
+      <literal>U+00A9 or U+00AB</literal>
+    </production>
+    <production>
+      <literal>U+00AC or U+00AE</literal>
+    </production>
+    <production>
+      <literal>U+00B0U+00B1, U+00B6, U+00BB, U+00BF, U+00D7, or U+00F7</literal>
+    </production>
+    <production>
+      <literal>U+2016U+2017 or U+2020U+2027</literal>
+    </production>
+    <production>
+      <literal>U+2030U+203E</literal>
+    </production>
+    <production>
+      <literal>U+2041U+2053</literal>
+    </production>
+    <production>
+      <literal>U+2055U+205E</literal>
+    </production>
+    <production>
+      <literal>U+2190U+23FF</literal>
+    </production>
+    <production>
+      <literal>U+2500U+2775</literal>
+    </production>
+    <production>
+      <literal>U+2794U+2BFF</literal>
+    </production>
+    <production>
+      <literal>U+2E00U+2E7F</literal>
+    </production>
+    <production>
+      <literal>U+3001U+3003</literal>
+    </production>
+    <production>
+      <literal>U+3008U+3030</literal>
+    </production>
+  </rule>
+  <rule name="operator-character">
+    <production>
+      <rule_reference ruleName="operator-head"/>
+    </production>
+    <production>
+      <literal>U+0300U+036F</literal>
+    </production>
+    <production>
+      <literal>U+1DC0U+1DFF</literal>
+    </production>
+    <production>
+      <literal>U+20D0U+20FF</literal>
+    </production>
+    <production>
+      <literal>U+FE00U+FE0F</literal>
+    </production>
+    <production>
+      <literal>U+FE20U+FE2F</literal>
+    </production>
+    <production>
+      <literal>U+E0100U+E01EF</literal>
+    </production>
+  </rule>
+  <rule name="operator-characters">
+    <production>
+      <rule_reference ruleName="operator-character"/>
+    </production>
+    <production>
+      <rule_reference ruleName="operator-character"/>
+      <rule_reference ruleName="operator-characters"/>
+    </production>
+  </rule>
+  <rule name="dot-operator-head">
+    <production>
+      <keyword token=".."/>
+    </production>
+  </rule>
+  <rule name="dot-operator-character">
+    <production>
+      <keyword token="."/>
+    </production>
+    <production>
+      <rule_reference ruleName="operator-character"/>
+    </production>
+  </rule>
+  <rule name="dot-operator-characters">
+    <production>
+      <rule_reference ruleName="dot-operator-character"/>
+    </production>
+    <production>
+      <rule_reference ruleName="dot-operator-character"/>
+      <rule_reference ruleName="dot-operator-characters"/>
+    </production>
+  </rule>
+  <rule name="binary-operator">
+    <production>
+      <rule_reference ruleName="operator"/>
+    </production>
+  </rule>
+  <rule name="prefix-operator">
+    <production>
+      <rule_reference ruleName="operator"/>
+    </production>
+  </rule>
+  <rule name="postfix-operator">
+    <production>
+      <rule_reference ruleName="operator"/>
+    </production>
+  </rule>
+  <rule name="type">
+    <production>
+      <rule_reference ruleName="array-type"/>
+    </production>
+    <production>
+      <rule_reference ruleName="dictionary-type"/>
+    </production>
+    <production>
+      <rule_reference ruleName="function-type"/>
+    </production>
+    <production>
+      <rule_reference ruleName="type-identifier"/>
+    </production>
+    <production>
+      <rule_reference ruleName="tuple-type"/>
+    </production>
+    <production>
+      <rule_reference ruleName="optional-type"/>
+    </production>
+    <production>
+      <rule_reference ruleName="implicitly-unwrapped-optional-type"/>
+    </production>
+    <production>
+      <rule_reference ruleName="protocol-composition-type"/>
+    </production>
+    <production>
+      <rule_reference ruleName="metatype-type"/>
+    </production>
+  </rule>
+  <rule name="type-annotation">
+    <production>
+      <keyword token=":"/>
+      <rule_reference ruleName="type"/>
+    </production>
+    <production>
+      <keyword token=":"/>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="type"/>
+    </production>
+  </rule>
+  <rule name="type-identifier">
+    <production>
+      <rule_reference ruleName="type-name"/>
+    </production>
+    <production>
+      <rule_reference ruleName="type-name"/>
+      <rule_reference ruleName="generic-argument-clause"/>
+    </production>
+    <production>
+      <rule_reference ruleName="type-name"/>
+      <keyword token="."/>
+      <rule_reference ruleName="type-identifier"/>
+    </production>
+    <production>
+      <rule_reference ruleName="type-name"/>
+      <rule_reference ruleName="generic-argument-clause"/>
+      <keyword token="."/>
+      <rule_reference ruleName="type-identifier"/>
+    </production>
+  </rule>
+  <rule name="type-name">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+  </rule>
+  <rule name="tuple-type">
+    <production>
+      <keyword token="("/>
+      <keyword token=")"/>
+    </production>
+    <production>
+      <keyword token="("/>
+      <rule_reference ruleName="tuple-type-body"/>
+      <keyword token=")"/>
+    </production>
+  </rule>
+  <rule name="tuple-type-body">
+    <production>
+      <rule_reference ruleName="tuple-type-element-list"/>
+    </production>
+    <production>
+      <rule_reference ruleName="tuple-type-element-list"/>
+      <keyword token="..."/>
+    </production>
+  </rule>
+  <rule name="tuple-type-element-list">
+    <production>
+      <rule_reference ruleName="tuple-type-element"/>
+    </production>
+    <production>
+      <rule_reference ruleName="tuple-type-element"/>
+      <keyword token=","/>
+      <rule_reference ruleName="tuple-type-element-list"/>
+    </production>
+  </rule>
+  <rule name="tuple-type-element">
+    <production>
+      <rule_reference ruleName="type"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <rule_reference ruleName="type"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <rule_reference ruleName="type"/>
+    </production>
+    <production>
+      <rule_reference ruleName="attributes"/>
+      <keyword token="inout"/>
+      <rule_reference ruleName="type"/>
+    </production>
+    <production>
+      <rule_reference ruleName="element-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+    <production>
+      <keyword token="inout"/>
+      <rule_reference ruleName="element-name"/>
+      <rule_reference ruleName="type-annotation"/>
+    </production>
+  </rule>
+  <rule name="element-name">
+    <production>
+      <rule_reference ruleName="identifier"/>
+    </production>
+  </rule>
+  <rule name="function-type">
+    <production>
+      <rule_reference ruleName="type"/>
+      <keyword token="-&gt;"/>
+      <rule_reference ruleName="type"/>
+    </production>
+  </rule>
+  <rule name="array-type">
+    <production>
+      <keyword token="["/>
+      <rule_reference ruleName="type"/>
+      <keyword token="]"/>
+    </production>
+  </rule>
+  <rule name="dictionary-type">
+    <production>
+      <keyword token="["/>
+      <rule_reference ruleName="type"/>
+      <keyword token=":"/>
+      <rule_reference ruleName="type"/>
+      <keyword token="]"/>
+    </production>
+  </rule>
+  <rule name="optional-type">
+    <production>
+      <rule_reference ruleName="type"/>
+      <keyword token="?"/>
+    </production>
+  </rule>
+  <rule name="implicitly-unwrapped-optional-type">
+    <production>
+      <rule_reference ruleName="type"/>
+      <keyword token="!"/>
+    </production>
+  </rule>
+  <rule name="protocol-composition-type">
+    <production>
+      <keyword token="protocol"/>
+      <keyword token="&lt;"/>
+      <keyword token="&gt;"/>
+    </production>
+    <production>
+      <keyword token="protocol"/>
+      <keyword token="&lt;"/>
+      <rule_reference ruleName="protocol-identifier-list"/>
+      <keyword token="&gt;"/>
+    </production>
+  </rule>
+  <rule name="protocol-identifier-list">
+    <production>
+      <rule_reference ruleName="protocol-identifier"/>
+    </production>
+    <production>
+      <rule_reference ruleName="protocol-identifier"/>
+      <keyword token=","/>
+      <rule_reference ruleName="protocol-identifier-list"/>
+    </production>
+  </rule>
+  <rule name="protocol-identifier">
+    <production>
+      <rule_reference ruleName="type-identifier"/>
+    </production>
+  </rule>
+  <rule name="metatype-type">
+    <production>
+      <rule_reference ruleName="type"/>
+      <keyword token="."/>
+      <keyword token="Type"/>
+    </production>
+    <production>
+      <rule_reference ruleName="type"/>
+      <keyword token="."/>
+      <keyword token="Protocol"/>
+    </production>
+  </rule>
+  <rule name="type-inheritance-clause">
+    <production>
+      <keyword token=":"/>
+      <rule_reference ruleName="class-requirement"/>
+      <keyword token=","/>
+      <rule_reference ruleName="type-inheritance-list"/>
+    </production>
+    <production>
+      <keyword token=":"/>
+      <rule_reference ruleName="class-requirement"/>
+    </production>
+    <production>
+      <keyword token=":"/>
+      <rule_reference ruleName="type-inheritance-list"/>
+    </production>
+  </rule>
+  <rule name="type-inheritance-list">
+    <production>
+      <rule_reference ruleName="type-identifier"/>
+    </production>
+    <production>
+      <rule_reference ruleName="type-identifier"/>
+      <keyword token=","/>
+      <rule_reference ruleName="type-inheritance-list"/>
+    </production>
+  </rule>
+  <rule name="class-requirement">
+    <production>
+      <keyword token="class"/>
+    </production>
+  </rule>
+</rules>
diff --git a/swift_grammar_parser.rb b/swift_grammar_parser.rb
new file mode 100644
index 0000000..cf81e58
--- /dev/null
+++ b/swift_grammar_parser.rb
@@ -0,0 +1,244 @@
+#!/usr/bin/ruby
+
+require 'nokogiri'
+require 'pp'
+
+# transform xml to a graph
+class RuleNode
+	attr_accessor :ruleName
+	attr_accessor :parentRules
+	attr_accessor :childRules
+	attr_accessor :productions
+	attr_accessor :depth
+	
+	def initialize(name)
+		@ruleName = name
+		@parentRules = []
+		@childRules = []
+		@productions = []
+	end
+	
+	def match(string)
+		@productions.any? do |p|
+			p.nodes.first.match(string)
+		end
+	end
+	
+	def proposals(string)
+		result = @productions.select{|p| p.nodes.first.match(string)}.map do |production|
+			production.nodes.map(&:as_proposal_string)
+		end
+		result
+	end
+	
+	def as_proposal_string
+		"#<#{ruleName}>#"
+	end
+	
+	def to_s
+		@ruleName
+	end
+end
+
+def all_ancestors(rule, traversed_nodes = [])
+	return [] if traversed_nodes.include?(rule)
+	result = rule.parentRules
+	rule.parentRules.each do |parent|
+		result += all_ancestors(rule, traversed_nodes << rule)
+	end
+	result.uniq
+end
+
+def all_descendants(rule, traversed_nodes = [])
+	return [] if traversed_nodes.include?(rule)
+	
+	result = rule.childRules
+	rule.childRules.each do |child|
+		result += all_descendants(child, traversed_nodes << rule)
+	end
+	result.uniq
+end
+
+# rules like statements -> statement statements(opt) describe a collection
+def is_collection_rule(rule)
+	rule.productions.size == 2 && 
+		((rule.productions[0].nodes.size == 1 && rule.productions[1].nodes.size == 2 && rule.productions[1].nodes[1] == rule) ||
+		(rule.productions[1].nodes.size == 1 && rule.productions[0].nodes.size == 2 && rule.productions[0].nodes[1] == rule))
+end
+
+class LiteralNode
+	attr_accessor :description
+	
+	def initialize(description)
+		@description = description
+	end
+	
+	def match(string)
+	# TODO
+		false
+	end
+	
+	def as_proposal_string
+		"#<#{@description}>#"
+	end
+	
+	def to_s
+		@description
+	end
+end
+
+class KeywordNode
+	attr_accessor :token
+	
+	def initialize(token)
+		@token = token
+	end
+	
+	def match(string)
+		@token.start_with?(string)
+	end
+	
+	def as_proposal_string
+		@token
+	end
+
+	def to_s
+		@token
+	end
+end
+
+class Production
+	attr_accessor :nodes
+	
+	def firstNodeAsRule(&block)
+		nodes.size > 0 && nodes.first.instance_of?(RuleNode) && yield(nodes.first)
+	end
+end
+
+XMLDOC = Nokogiri::XML(open(File.expand_path("./swift_grammar_modified.xml")))
+
+# create all rule-nodes
+RULE_XML_NODES = XMLDOC.xpath("/rules/rule")
+RULENAME_MAPPED_TO_NODE = RULE_XML_NODES.inject({}) do |mapping, ruleXmlNode|
+	node = RuleNode.new ruleXmlNode["name"]
+	mapping[node.ruleName] = node
+	mapping
+end
+
+# add the child-nodes and productions to the rulenodes
+RULE_XML_NODES.each do |ruleXmlNode|
+	rule = RULENAME_MAPPED_TO_NODE[ruleXmlNode["name"]]
+	rule.productions = ruleXmlNode.xpath(".//production").map do |production| 
+		prod = Production.new
+		prod.nodes = production.xpath("./*").map do |pn| 
+			if pn.name == "rule_reference"
+				RULENAME_MAPPED_TO_NODE[pn["ruleName"]]
+			elsif pn.name == "keyword"
+				KeywordNode.new pn["token"]
+			else
+				LiteralNode.new pn.text
+			end
+		end
+		prod
+	end
+
+	rule.childRules = ruleXmlNode.xpath(".//rule_reference/@ruleName").to_a.uniq.map{|reference| RULENAME_MAPPED_TO_NODE[reference.to_s]}
+end
+
+# add the ancestor-nodes to the rulenodes
+RULENAME_MAPPED_TO_NODE.values.each do |rule|
+	rule.childRules.each do |child|
+		child.parentRules << rule
+	end
+end
+
+top_level_nodes = RULENAME_MAPPED_TO_NODE.values.select{|rule| rule.parentRules.size == 0}
+throw "more than one top-level-node, that probably destroys many assumptions in the further code" if top_level_nodes.size > 1
+throw "no top-level-node, that probably destroys many assumptions in the further code" if top_level_nodes.size == 0
+
+TOP_LEVEL_NODE = top_level_nodes.first
+
+# calcualte and assign the depth-level to each node
+def traverse(rule, current_depth = 0, &block)
+	return if rule.depth != nil # already has a depth, thus all its childRules also have a depth
+	block.call(rule, current_depth)
+	rule.childRules.each do |child|
+		traverse(child, current_depth + 1, &block)
+	end
+end
+
+traverse(TOP_LEVEL_NODE) do |rule, current_depth|
+	rule.depth = current_depth
+end
+
+RULE_ALIASES = RULENAME_MAPPED_TO_NODE.values.select {|rule| (rule.productions.size == 1) && (rule.productions.first.nodes.size == 1)}
+
+#puts RULE_ALIASES.map(&:ruleName)
+
+def traverse_upwards_when_true_impl(rule, traversed_nodes, &block)
+	higherParentRules = rule.parentRules.select{|p| p.depth != nil && p.depth < rule.depth}
+	higherParentRules.size == 0 || higherParentRules.any? do |parent|
+#		puts "#{" " * traversed_nodes.size*2} check for #{rule.ruleName} and #{parent.ruleName} '#{yield rule,parent}' will return? #{traversed_nodes.include?(parent) || rule == parent}"
+		return false if traversed_nodes.include?(parent)
+		if yield rule, parent
+			traverse_upwards_when_true_impl(parent, traversed_nodes.clone << rule) {|r,p| yield r,p}
+		else
+			false
+		end
+	end
+end
+
+def traverse_upwards_when_true(rule, &block)
+	traverse_upwards_when_true_impl(rule, []) {|r,p| yield r,p }
+end
+
+def leaves(rule, traversed_rules = [])
+	return [] if traversed_rules.include?(rule)
+	subnodes = rule.productions.map {|p| res = nil; p.firstNodeAsRule{|r| res = r}; res}.compact
+	result = subnodes.flat_map do |s|
+		leaves(s, traversed_rules.clone << rule)
+	end
+	if subnodes.size == 0
+		result << rule
+	end
+	result.uniq
+end
+
+puts leaves(RULENAME_MAPPED_TO_NODE["top-level-declaration"]).map(&:ruleName).sort.join(", ")
+
+current_context = RULENAME_MAPPED_TO_NODE["top-level-declaration"]
+
+def calculate_next_possible_rules(current_context)
+	next_possibilities = all_descendants(current_context).select do |rule|
+#		puts "try for #{rule.ruleName}"
+		traverse_upwards_when_true(rule) do |r, p|
+			any = p.productions.any? do |production|
+				production.firstNodeAsRule {|fr| fr == r}
+			end
+#			puts "  currently #{any} for #{r.ruleName} (checked against #{p.ruleName})"
+			any
+		end
+	end
+	next_possibilities.select {|r| not r.productions.all?{|p| p.firstNodeAsRule{|fr| next_possibilities.include?(fr) }}}
+end
+#
+#e = traverse_upwards_when_true(RULENAME_MAPPED_TO_NODE["for-statement"]) do |rule, parent|
+#	any = parent.productions.any? do |production|
+#		production.firstNodeAsRule {|fr| fr == rule}
+#	end
+#	any
+#end
+#puts e
+
+puts "so whats next?" # all descendants: #{all_descendants(current_context).map(&:ruleName).sort.join(",")}"
+nexts = calculate_next_possible_rules(current_context)
+puts nexts.map(&:ruleName).sort.join(", ")
+puts nexts.flat_map{|r| r.productions}.map{|p| p.nodes.first}.select{|r| !r.instance_of?(RuleNode)}.map(&:to_s).uniq
+
+INPUT = "fu"
+puts "=== selection for #{INPUT}"
+next_based_on_input = nexts.select {|n| n.match(INPUT) }
+puts next_based_on_input
+puts next_based_on_input.flat_map{|n| n.proposals(INPUT)}.map{|array| array.join(" ")}.uniq
+
+# transform graph to classes: Rule, Literal, RuleReference
