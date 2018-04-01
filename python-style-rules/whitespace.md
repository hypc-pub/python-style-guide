# Whitespace

按照以下规范使用空格。

:point_right: **括号内不要有空格**

```python
spam(ham[1], {eggs: 2}, [])
```

:point_right: **逗号、分号、冒号前不要加空格，逗号、分号、冒号后面加空格，除了行尾**

```python
if x == 4:
    print x, y
x, y = y, x
```

:point_right: **在参数列表、索引、切片的开始括号/方括号之前不要有空格**

```python
spam(1)
dict['key'] = list[index]
```

:point_right: **在运算符前后添加空格**

这些运算符包括：`==`、`<`、`>`、`!=`、`<>`、`<=`、`>=`、`in`、`not in`、`is`、`is not`、`and`、`or`、`not`。
但有些时候需要你自行判断是否需要添加空格。

:point_right: **在赋值运算符`=`前后需要添加空格，但`=`用于指示关键字参数或默认参数时，不要添加空格**

```python
x == 1

def complex(real, imag=0.0): return magic(r=real, i=imag)
```

:point_right: **不要使用空格对齐连续行的标记，因为它们会成为维护的负担（如`:`、`,`、`#`、`=`等）**

```python
foo = 1000  # comment
long_name = 2  # comment that should not be aligned

dictionary = {
    'foo': 1,
    'long_name': 2,
}
```

不要这样做：

```python
foo       = 1000  # comment
long_name = 2     # comment that should not be aligned

dictionary = {
    'foo'      : 1,
    'long_name': 2,
}
```
