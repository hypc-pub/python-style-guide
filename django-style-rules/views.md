# Views

* view名采用大驼峰命名法命名，且必须以`View`作为后缀
* 必须继承`django.views.generic`下的`View`类或其衍生类：`CreateView`、`DeleteView`、`UpdateView`、`DetailView`、`ListView`等
* 根据http请求的method定义处理函数
* 处理函数的第二个参数必须是`request`，不要使用简写或其他名字
* 登录鉴权操作放在装饰器中，鉴权失败返回状态码`403`
* form表单校验放在装饰器中，校验失败返回状态码`422`
* 请求参数校验必须使用`Form`进行校验，具体参见[Forms](./forms.md)
* 除文件或其他二进制数据外，返回的内容都是json格式的数据

```python
class PersonsView(View):
    @login_required()
    @form_valid(PersonsGetForm)
    def get(self, request):
        data = request.valid_data
        q = Q()
        ...
        persons = Person.objects.filter(q)
        results = [_.detail_info() for _ in persons]
        return HttpJsonResponse(results)
```
