# Parentheses

谨慎的使用括号。

* 不要在条件判断语句（除了多行条件判断语句）使用括号
* 不要在return语句中使用括号
* 在元组周围使用括号

**正确的写法**

```python
if foo:
    bar()
while x:
    x = bar()
if x and y:
    bar()
if not x:
    bar()
return foo
for (x, y) in dict.items():
```

**不正确的写法**

```python
if (x):
    bar()
if not(x):
    bar()
return (foo)
```
