# Urls

* 所有url配置都以`^`开头
* 父级url都以`/`结尾
* 叶子url都以`$`结尾
* 使用named groups代替non-named groups，即使用`(?P<name>pattern)`代替`(pattern)`

```python
# parent urls
urlpatterns = [
    url(r'^persons/', include('person.urls')),
]

# sub urls
urlpatterns = [
    url(r'^$', PersonsView.as_view()),
    url(r'^(?P<person_id>\w+)$', PersonView.as_view()),
    url(r'^(?P<person_id>\w+)/job$', PersonJobView.as_view()),
]
```
