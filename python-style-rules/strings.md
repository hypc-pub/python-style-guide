# Strings

使用`format`函数或`%`操作符来进行字符串格式化。当然，如果只是字符串连接，那么使用`+`号操作符即可。

**例如**

```python
x = a + b
x = '%s, %s!' % (imperative, expletive)
x = '{}, {}!'.format(imperative, expletive)
x = 'name: %s; score: %d' % (name, n)
x = 'name: {}; score: {}'.format(name, n)
```

**错误的写法**

```python
x = '%s%s' % (a, b)     # use + in this case
x = '{}{}'.format(a, b)     # use + in this case
x = imperative + ', ' + expletive + '!'
x = 'name: ' + name + '; score: ' + str(n)
```

避免在一个循环中使用`+`或`+=`操作符来拼接字符串。由于字符串是不可变的，如果那样操作的话将会产生大量的临时对象。
正常情况下，我们可以使用`''.join`将一个字符串数组拼接起来。

```python
items = ['<table>']
for last_name, first_name in employee_list:
    items.append('<tr><td>%s, %s</td></tr>' % (last_name, first_name))
items.append('</table>')
employee_table = ''.join(items)
```

**错误的写法**

```python
employee_table = '<table>'
for last_name, first_name in employee_list:
    employee_table += '<tr><td>%s, %s</td></tr>' % (last_name, first_name)
employee_table += '</table>'
```

在写多行字符串时，使用`"""`而不是`'''`。
而不管在什么时候，文档字符串都必须使用`"""`。
另外也不要盲目的使用多行字符串，因为它随着代码的缩进可能造成不可预料的错误。

```python
print ("This is much nicer.\n"
       "Do it this way.\n")
```

**错误的写法**

```python
print """This is pretty ugly.
Don't do this.
"""
```
