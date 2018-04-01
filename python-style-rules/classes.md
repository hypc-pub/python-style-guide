# Classes

如果类不需要继承其他基类，那么明确的继承`object`类，内部类也需要这么做。

```python
class SampleClass(object):
    pass


class OuterClass(object):

    class InnerClass(object):
        pass


class ChildClass(ParentClass):
    """Explicitly inherits from another class already."""
```
