# Access Control

如果一个访问器函数不是特别的需要，你可以使用public变量来替代它。
当之后添加更多的功能时，可以使用`property`来保持语法的一致性。

当然，如果功能更复杂，或访问变量的成本更高，那么应该使用函数调用，类似`get_foo()`或`set_foo()`。
若果过去的行为允许直接访问属性，那么不要使用新的访问器函数绑定到这些属性上。
