# 🕸 wasm

- [learning-rustwasm](https://rustwasm.github.io/book/introduction.html)

## 📦 wasm-pack
> rust->js

**the default**

```bash
rustup run nightly wasm-pack build
```

**use different [target](https://rustwasm.github.io/wasm-pack/book/commands/build.html#target)**

the result of `wasm-pack build --target web`

```html
<script type="module" src="./hello-wasm">
  import wasm from 'hello-wasm'
  wasm.hello()
</script>
```

the result of `wasm-pack build`

```ts
import wasm from 'hello-wasm'
wasm.hello()
```
