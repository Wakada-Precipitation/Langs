[**append value**](https://linuxhint.com/bash_append_array/)

```bash
apps=(wechat notion)
apps+=(alfred)
```

[**remove by value**](https://stackoverflow.com/questions/16860877/remove-an-element-from-a-bash-array)

```bash
apps=(wechat notion)
delete=(wechat)
apps=("${apps[@]/$delete}")
```