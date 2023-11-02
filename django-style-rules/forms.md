# Forms

* form 名采用大驼峰命名法命名，且必须以 `Form` 作为后缀
* 必须继承 `django.forms.Form`
* 如果需要预处理单个字段，需要实现 `clean_[field_name]()` 函数
* 如果需要同时预处理多个字段，需要实现 `clean()` 函数
* 值为多选一的字段，必须添加 `choices` 参数，且必须使用大写
* 简单类型的列表参数，如数字、无特殊字符的字符串等，使用逗号分隔的字符串
* 时间相关的参数：
  * 单独日期的参数，直接使用 `yyyy-mm-dd` 的格式
  * 单独时间的参数，直接使用 `hh:mm:ss` 的格式
  * 具体到秒的时间参数，使用秒级的时间戳
  * 时间范围的参数，按照上面的格式，使用逗号作为分隔符，以字符串的形式传输
* boolean值的参数，使用 `NullBooleanField` 类

```python
class PersonCreateForm(forms.Form):
    first_name = forms.CharField(max_length=20)
    last_name = forms.CharField(max_length=40)
    gender = forms.ChoiceField(Person.GENDERS)
    birthday = forms.FloatField(required=False)
    job = forms.CharField(max_length=200)
    description = forms.CharField(required=False)

    def clean_birthday(self):
        field = self.cleaned_data['birthday']
        if field:
            return timestamp_to_datetime(field)
        else:
            return None
```
