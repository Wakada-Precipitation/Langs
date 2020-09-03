**basic**

the robust way

```bash
extravalue
function setvalue() {
  extravalue=1
}
```

**use `$?` catch number**

```bash
function setvalue() {
  return 1
}
echo "$?"
```