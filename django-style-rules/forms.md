# Forms

* form名采用大驼峰命名法命名，且必须以`Form`作为后缀
* 必须继承`django.forms.Form`
* 如果需要预处理单个字段，需要实现`clean_[field_name]()`函数
* 如果需要同时预处理多个字段，需要实现`clean()`函数
* 值为多选一的字段，必须添加`choices`参数，且必须使用大写

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
