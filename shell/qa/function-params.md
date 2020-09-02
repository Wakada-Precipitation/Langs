**basic**

```bash
function handle_params() {
  echo "$@"
}
```

**magic with opt**

```bash
function handle_params() {
  for opt; do
    echo "$opt"
  done
}
```

`for opt` equal `for opt in $@`