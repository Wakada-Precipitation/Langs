**basic**

```bash
command -v <command-name>
```

for example, if `homebrew` installed, `command -v homebrew` will output `/usr/local/bin/brew`

**check-package-install-as-condition**

```bash
if [! command -v brew &> /dev/null]; do
  echo 'brew not found'
else
  echo 'brew found'
fi
```