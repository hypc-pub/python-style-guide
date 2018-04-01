# Files and Sockets

在使用完文件或socket之后，必须显式的关闭，除非使用了`with`语句块。

```python
with open("hello.txt") as hello_file:
    for line in hello_file:
        print line
```

对于不支持`with`语句的文件类对象，可以使用`contextlib.closing()`。

```python
import contextlib

with contextlib.closing(urllib.urlopen("https://www.python.org/")) as front_page:
    for line in front_page:
        print line
```
