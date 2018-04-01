# Naming

module_name, package_name, ClassName, method_name, ExceptionName, function_name, GLOBAL_CONSTANT_NAME, global_var_name, instance_var_name, function_parameter_name, local_var_name.

**避免使用的名字**

* 除计数器或迭代器外，都不应该使用单个字符作为名字
* 避免使用中划线作为package/module名字
* 双下划线开头和结尾的名字

**正确的做法如下**

Type                        |Public             |Internal
----------------------------|-------------------|----------------------------------------
Packages                    |lower_with_under   |-
Modules                     |lower_with_under   |_lower_with_under
Classes                     |CapWords           |_CapWords
Exceptions                  |CapWords           |-
Functions                   |lower_with_under() |_lower_with_under()
Global/Class Constants      |CAPS_WITH_UNDER    |_CAPS_WITH_UNDER
Global/Class Variables      |lower_with_under   |_lower_with_under
Instance Variables          |lower_with_under   |_lower_with_under (protected) or __lower_with_under (private)
Method Names                |lower_with_under() |_lower_with_under() (protected) or __lower_with_under() (private)
Function/Method Parameters  |lower_with_under   |-
Local Variables             |lower_with_under   |-
