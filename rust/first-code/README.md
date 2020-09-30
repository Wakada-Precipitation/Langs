# first-code

### **数据类型**

<https://learning-rust.github.io/docs/a8.primitive_data_types.html> 这里可以看到类型。注意`String`的所有权问题。

### **所有权**

1. 可以`copy`的不存在所有权问题（不需要分配内存和和资源）。`String`类型就不是可以`copy`的。那么经常出现`String`的类型的所有权

### **引用=借用**

引用不意味有所有权，作用域之外还可以使用，就像是借用了。


### **as**

`as`类似`typescript`可以跳过类型检查的错误（往往你要清楚知道你在做什么）。

### **遍历**

1. 控制语句一般不加`()` 
2. `loop`是`while`的语法糖
3. `for`遍历数组的方式是`for x in arr.iter()` or `for in arr.iter().enumerate()`

### Style guide

和`ts`比较类似的规则。

1. 类型是`CamelCase`
2. 但是变量和函数都是`snake_case`
