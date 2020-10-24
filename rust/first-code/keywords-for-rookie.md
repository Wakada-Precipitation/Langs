# first-code

### Style guide

和`ts`比较类似的规则。

1. 类型是`CamelCase`
2. 但是变量和函数都是`snake_case`

### **rustup vs cargo**

两个都可以进行一些下载安装工作，所以就会有点疑惑。两者的区别个人看法是：

- `rustup` = `webpack`, install pkgs to build project
- `cargo` = `pkg manager`, install pkgs used in project

### **extern**

`extern crate pkg`和`use pkg`有点让人误解。从某种意义上来说，后者也可以表达使用外部`pkg`含义。至少对于一个`JS user`来说是这样的。[stackoverflow](https://stackoverflow.com/questions/29403920/whats-the-difference-between-use-and-extern)回答了这个疑惑，在*rust-2018*之后，在使用`crate`角度来说，你可以不使用`extern`关键词了。

### **attributes**
> refs: <https://doc.rust-lang.org/reference/attributes.html>

注解。编译时候有用，不等于注释。

- `#[test]`就是个测试的`attributes`。表示在测试编译的时候使用。

### **return**

默认可以不写。

### **!**

代表的是宏的概念

### **println!**

1. `{:?} or {#?}`可以输出数组

### **数据类型**

<https://learning-rust.github.io/docs/a8.primitive_data_types.html> 这里可以看到类型。注意`String`的所有权问题。

### **所有权**

1. 可以`copy`的不存在所有权问题（不需要分配内存和和资源）。`String`类型就不是可以`copy`的，那么经常出现`String`的类型的所有权。类比**简单数据**都是`copied`。

### **引用=借用**

引用不意味有所有权，作用域之外还可以使用，就像是借用了。


### **as**

`as`类似`typescript`可以跳过类型检查的错误（往往你要清楚知道你在做什么）。

### **遍历**

1. 控制语句一般不加`()` 
2. `loop`是`while`的语法糖
3. `for`遍历数组的方式是`for x in arr.iter()` or `for in arr.iter().enumerate()`


### **impl & struct & traits**

`impl`是`implements`缩写。

1. `struct`在定义**数据**结构
2. `traits`在定义**抽象的方法**，但是不实现具体功能（一般），如果实现了，一般是作为默认的方法。
3. `impl`在实现功能，可以覆盖`traits`阶段实现的方法

`struct & traits`两者共同作用定义抽象类。三者可以同名，代表定义同一个东西。

### **::**

1. `::` 调用的类方法一般是静态的方法，即内部是不存在获取`self`的。

### **test**

- `#[test]`

### **mod**

- 默认的模块导出是`private`，可以通过`pub`导出
- 类似`index.ts`作用，文件夹下面的**mod.rs**可以作为该文件夹的默认导出。模块结构和文件夹/文件结构相同。

### **crates**

本质上和`mod`有点像。如果类比`npm packages`作用的话，就像是一个文件夹+`package.json`的组合。在本地开发`npm`第三方包时候，在其他项目中可以通过**pathname**来导入那个第三方包。

```json
{
  "depencies": {
    "packagename": "./root/name"
  }
}
```

有点不同的是：`rust`会对这个文件夹单独编译。

### **use**

- `use xx::fo::{x, y}` 导入`x and y`两个模块
- `use xx:fo::{self, y}` 导入`fo and y`模块

### **error**

可以在[这里](https://doc.rust-lang.org/error-index.html#E0571)找到`error-index`和错误的对照表。

除了`panic!`之外，可以在[这里](https://learning-rust.github.io/docs/e2.panicking.html)找到更多的抛出特别的错误。例如：

- 代码还没写好
- 逻辑不应该进入这里的

...等等错误。

**?**

函数的`?` - `function()?`在发生错误的时候可以立即返回。

**[自定义错误](https://learning-rust.github.io/docs/e7.custom_error_types.html)**

### the confused parts

- [impl-for](https://learning-rust.github.io/docs/b5.impls_and_traits.html#Trait-objects)
- `lifetimes`
- `marco` - 宏和函数之间有什么区别
- `unwrap`