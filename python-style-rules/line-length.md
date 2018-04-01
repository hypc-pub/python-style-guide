# Line Length

每一行的最大长度为80个字符，不要超过80，除了注释中的URLs。

不要使用反斜线进行换行。

:point_right: **import引用时**

```python
from Tkinter import Tk, Frame, Button, Entry, Canvas, Text
from Tkinter import LEFT, DISABLED, NORMAL, RIDGE, END
# 或
from Tkinter import (Tk, Frame, Button, Entry, Canvas, Text,
    LEFT, DISABLED, NORMAL, RIDGE, END)
```

不要：

```python
from Tkinter import Tk, Frame, Button, Entry, Canvas, Text, \
    LEFT, DISABLED, NORMAL, RIDGE, END
```

:point_right: **函数调用时**

```python
foo_bar(self, width, height, color='black', design=None, x='foo',
        emphasis=None, highlight=0)
```

:point_right: **if判断时**

```python
if (width == 0 and height == 0 and
    color == 'red' and emphasis == 'strong'):
```

:point_right: **长字符串声明时**

```python
x = ('This will build a very long long '
     'long long long long long long string')
```

:point_right: **注释中的URLs**

```python
# See details at
# https://www.example.com/us/developer/documentation/api/content/v2.0/csv_file_name_extension_full_specification.html
```
