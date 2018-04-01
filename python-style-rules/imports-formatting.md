# Imports Formatting

Imports should be on separate lines.

```python
import os
import sys
```

**不要**

```python
import os, sys
```

Imports应该位于文件的最上方，通常需要进行分组：

* 基础库
* 第三方库
* 应用本身模块

在每一个分组中，根据引用的完整路径进行排序，忽略大小写。

```python
import foo
from foo import bar
from foo.bar import baz
from foo.bar import Quux
from Foob import ar
```
