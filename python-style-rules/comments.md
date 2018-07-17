# Comments

使用正确的样式来编写注释。

## Doc Strings

文档注释是Python特有的一种风格的注释。文档注释是一个字符串，它是`package`、`module`、`class`、`function`的第一条语句。

## Modules

每个项目都应该有一个许可证模板，为你的项目选择合适的许可证样板（例如，Apache 2.0，BSD，LGPL，GPL）。

## Functions and Methods

函数必须有文档注释，除了以下情况：

* 非常短
* 功能或业务逻辑非常简单、明显

函数的文档注释应该能在不读代码的情况下，能提供足够的信息给调用者调用函数。
文档字符串应该描述函数的调用语法及其语义，而不是其实现。
对于棘手的代码，代码旁边的注释比文档注释更为有效。

```python
def function_with_types_in_docstring(param1, param2):
    """Example function with types documented in the docstring.

    `PEP 484`_ type annotations are supported. If attribute, parameter, and
    return types are annotated according to `PEP 484`_, they do not need to be
    included in the docstring:

    :param param1: The first parameter.
    :type param1: int
    :param param2: The second parameter.
    :type param2: str
    :return: The return value. True for success, False otherwise.
    :rtype: bool
    """
    ...
```

关于Type Hints的用法可以参考：[typing — Support for type hints][hints]、[PEP 484][pep484]。

## Classes

在每一个类的定义时都应该添加一个文档注释。

## Block and Inline Comments

最后一个需要注释的地方是在代码棘手的地方。如果你将不得不在下一次代码评审时解释它，那么就应该添加注释。

在复杂的功能之前添加注释，非显而易见的行应该在行尾添加注释。

```python
# We use a weighted dictionary search to find out where i is in
# the array.  We extrapolate position based on the largest num
# in the array and the array size and then do binary search to
# get the exact number.

if i & (i-1) == 0:          # true iff i is a power of 2
```

为了提高可读性，行尾注释应该距离代码至少2个空格。

另外，不要描述代码。


[hints]: https://docs.python.org/3/library/typing.html
[pep484]: https://www.python.org/dev/peps/pep-0484/
