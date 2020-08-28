**async config variable**

```bash
ask() {
  read -p "async config variable: " "$1"
}
VARIABLE=y
ask VARIABLE
echo $VARIABLE
```