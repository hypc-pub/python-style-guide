# Urls

* 父级 url 都以 `/` 结尾
* 使用 `path converters` 替代 url 中的动态部分

```python
# parent urls
urlpatterns = [
    path('persons/', include('person.urls')),
]

# sub urls
urlpatterns = [
    path('', PersonsView.as_view()),
    path('<uuid:person_id>/', PersonView.as_view()),
    path('<uuid:person_id>/job', PersonJobView.as_view()),
]
```
