# Models

* model名采用大驼峰命名法
* 字段名全部使用小写字母加下划线格式
* 必须添加主键，且主键必须是`UUIDField`字段
* 值为多选一的字段，必须添加`choices`参数，且必须使用大写
* `class Meta`必须位于字段定义完成之后，其他函数之前
* 必须添加这些字段`created_time`、`updated_time`、`deleted`、`deleted_time`、`description`
* model类中的各成员的顺序应遵循以下顺序（不是所有项都是必须的）
    1. 所有的数据库字段
    2. 自定义的[管理器属性（django1.9）][model_manager]
    3. `class Meta`
    4. `def __unicode__()`
    5. `def __str__()`
    6. 需要重写的`models.Model`函数
    7. 自定义的`property`函数
    8. `def brief_info()`
    9. `def detail_info()`
    10. 其他自定义函数

```python
class Person(models.Model):
    person_id = models.UUIDField(primary_key=True, default=uuid.uuid1)
    first_name = models.CharField(max_length=20)
    last_name = models.CharField(max_length=40)
    GENDERS = (
        ('MALE', 'MALE'),
        ('FEMALE', 'FEMALE'),
    )
    gender = models.CharField(max_length=10, choices=GENDERS)
    birthday = models.DateTimeField(null=True)
    job = models.CharField(max_length=200, blank=True)
    created_time = models.DateTimeField(auto_now_add=True)
    updated_time = models.DateTimeField(auto_now=True)
    deleted = models.BooleanField(default=False)
    deleted_time = models.DateTimeField(null=True)
    description = models.TextField(blank=True)

    class Meta:
        db_table = 'person'

    def brief_info(self):
        return {
            'person_id': self.person_id.hex,
            'first_name': self.first_name,
            'last_name': self.last_name,
        }

    def detail_info(self):
        return {
            'person_id': self.person_id.hex,
            'first_name': self.first_name,
            'last_name': self.last_name,
            'gender': self.gender,
            'birthday': self.birthday.timestamp(),
            'job': self.job,
            'created_time': self.created_time.timestamp(),
            'updated_time': self.updated_time.timestamp(),
            'deleted': self.deleted,
            'deleted_time': self.deleted_time.timestamp(),
            'description': self.description,
        }
```


[model_manager]: https://docs.djangoproject.com/en/1.9/topics/db/managers/
