---
title: "写给非IT专业同学的Python入门辅导"
date: 2016-10-06 23:19:35 +0800
tags: python
---

>这篇文章的目标读者是零编程基础的Python初学者。这不是一个完整的Python入门教程，而只是简单说明一些与编程（针对但不限于Python）有关的基础概念，作为在Python入门教程之前或之外的一个辅助。希望对初学者有所帮助。
>
>本文尽量保持简明，所以略去大量细节，必要时请参考专门的教程和官方文档。

# 基础

### 1. 计算机或电脑(Computer)

相信读到这里的同学，即使没有编程基础，至少有相当长时间的电脑使用经验。

Computer，大陆译作“计算机”，台湾译作“电脑”，下文将不做严格区分。如果补充说明的话，在大陆的语境中，“电脑”通常指个人桌面电脑(Desktop)或笔记本电脑(Laptop)，而“计算机”作为专业术语，则可以包括个人电脑、服务器、乃至便携设备、嵌入式系统等各种的计算机系统。

### 2. 两种文件：文本文件和二进制文件

电脑上有很多种文件类型(File types)，可以归为两大类：

* 文本文件(Text file)：包括最常见的TXT文件、各种编程语言的源代码文件、很多程序的配置文件、日志文件等。
* 二进制文件(Binary file): 除文本文件之外的其它文件，采用某特定系统或程序的约定格式，通常无法直接作为文本阅读。如Windows系统上常见的EXE、DOC/DOCX、JPG、MP3/MP4等等。

Python的代码文件是文本文件。所以你需要一款文本编辑器(Text editor)来写Python代码。Windows自带的写字板(Notepad)就是一款文本编辑器，但过于简陋，不堪大用。像Atom、Sublime Text都是强大而易上手的文本编辑器，IT世界中还有更（？）强大但学习曲线非常陡峭的Vim和Emacs。如果你的Python课程采用专门的Python开发工具如PyCharm，它已经内置了文本编辑器。

>不要用MS-Word等字处理程序写代码，因为它们处理的是二进制文件。

### 3. 程序代码是如何执行的

如果你在大陆的计算机等级考试中学过C语言（鬼知道为什么要让非IT专业的同学们学习C语言），你应该知道C语言需要编译。简单来说，编译型语言需要编译器(Compiler)等一组工具把文本的源代码文件转换成二进制的可执行文件，然后执行生成的可执行文件。

Python是一种解释型语言，文本的代码文件可以由解释器(Interpreter)直接运行。解释型语言常常被称为脚本(Script)。

比如一个Python代码文件hello.py，可以在命令行中通过`python hello.py`执行。如果你的Python课程采用专门的Python开发工具如PyCharm，可以在里面一键运行，而它背后做的事情就是像`python hello.py`这样，由Python解释器执行你的代码文件。

# 开始Python之前

### 4. Python版本

Python 2和Python 3不兼容。若无特殊理由，推荐直接学习Python 3；或者根据你的Python课程来选择。

对于初学者，Python 2和3的有影响的区别可能主要是：

* 在Mac和Linux上，Python 3的解释器命令可能是`python3`。使用命令`python -V`或`python3 -V`查看你的Python版本。
* 初学时常用的print，在Python 2中是`print 'abc'`语句，在Python 3中是`print('abc')`函数。
* 查找官方文档时，请确定你查看的Python版本。

>Python的安装过程和开发工具的选择，请参考你的课程或入门教程。

### 5. 交互式执行(Interactive Mode)

Python除了可以用解释器执行整个代码文件，还可以交互式执行（就像聊天，你输入一个语句，它输出一个回复或者等待你的下一个语句）。这对于学习或尝试Python的某些功能非常方便。对于用Python进行数据分析的工作，甚至主要就是以交互式来进行的。

不带参数运行Python解释器`python`或`python3`、或者在菜单中选择相应的Python解释器，可以进入交互模式。在PyCharm中点击“Python Console”也可以打开交互模式。

在交互模式中，提示你输入语句的地方显示首要提示符(primary prompt)，默认是`>>>`，当语句没有结束，需要下一行继续输入时，显示次要提示符(secondary prompt)，默认是`...`（在Windows的IDLE显示为空白）。

示例：

```
Python 3.5.2
Type "help", "copyright", "credits" or "license" for more information.
>>> 1+2
3
>>> 'this is a string'
'this is a string'
>>> for i in range(5):
...     print(i)
...
0
1
2
3
4
>>> the_world_is_flat = True
>>> if the_world_is_flat:
...     print("Be careful not to fall off!")
...
Be careful not to fall off!
>>> exit()
```

### 6. Python对大小写、缩进敏感

* Python对大小写敏感。所以输入this、This、THIS都是不一样的。
* Python用缩进(indent)表示代码结构，这是Python标志性的特色之一。所以在行首输入2个或4个空格、1个TAB，都是不一样的。通常你的文本编辑器或开发工具会自动帮你处理缩进，你只需要按1次TAB键表示1级缩进，它会自动输入4个空格或1个TAB（使用默认设置即可，也可以自定义）。不要混用空格和TAB；不要使用中文全角空格。

# 编程语言的要素

Python入门教程一般会包含以下要素：

>这一部分内容是一个学习提纲，需要结合入门教程来看。
>
>这也是常见的指令式语言(Imperative programming)的通用要素，只是在特定要素的概念、实现方式、关键字等方面有差异，所以这也是快速学习一门新语言的大纲。

### 数据类型(Data types)与数据结构(Data structures)

* 编程语言通常处理的基础数据类型有两种：数值、字符串。
    * 数值类型包括：整数(Integer)、浮点数(Floating point)。某些语言会以内置或扩展方式支持定点小数(Fixed point)、复数。
        * Python的整数是无限长度（限度取决于你的电脑），所以可以直接用`2 ** 128`计算2的128次方、用`math.factorial(1000)`（需要先`import math`）计算1000的阶乘，这在其它语言中可能要费很多工夫才能做到。
        * 浮点数不是绝对精确的数值。Google "Floating Point Arithmetic"了解更多。
    * 字符串是字符组成的长度为0到N的序列，表示一段文本。Python中使用1个单引号或双引号表示单行字符串，3个单引号或双引号表示多行字符串。字符串中可以使用转义符反斜杠“\”表示特殊字符。深入学习之后，你可能会需要了解字符编码(Character encoding)。
    * 布尔类型(Boolean)表示真或假两个值。Python中是`True`和`False`。（有的语言中没有显式的布尔类型。）
    * Python中还有一个特殊类型`None`，表示空、什么类型都不是（禅意十足）。
* 编程语言通常以内置或扩展方式支持两种常用数据结构：序列、字典。
    * 序列(Sequence)表示一组元素的有序列表，元素可以是基础数据类型也可以是某些高级数据结构。Python中的基础序列类型包括list、tuple、range；字符串（字符序列）和字节流（二进制序列）是特殊的序列类型。
    * 字典(Dictionary)也称作映射(Mapping)类型，表示一组键-值(key-value)映射的无序集合。
    * Python中还支持集合类型(Set)，和数学中的集合概念一样，表示无序、不重复的元素集合。
* 编程语言可能支持自定义类型。参见下文的类。
* Python中可以用`type()`函数查看对象的类型：

```
>>> type(1)
<class 'int'>
>>> type(1.0)
<class 'float'>
>>> type('a')
<class 'str'>
>>> type(True)
<class 'bool'>
>>> type(None)
<class 'NoneType'>
>>> type([])
<class 'list'>
>>> type({})
<class 'dict'>
```

>这一部分内容，可以Google "Python Built-in Types"查看官方文档。

### 变量(Variable)、运算符(Operator)、表达式(Expression)、语句(Statement)

* 上面列举的`1, 1.0, 'a', True, None, [], {}`这些没有命名的值，也可以称为常量。
* 编程中更常用的是命名的变量。变量名可以包含字母、下划线、数字，但数字不能作为开头。最好采用有含义的名字、统一的风格来命名变量。
* Python支持的运算符：数值运算符（加减乘除、求余、指数等）、比较运算符（相等、不等、大于小于、is/is not、in等）、布尔运算符（又叫逻辑运算符）（and/or/not）、位运算符（相对不常用）等。还有一个特殊的赋值运算符（=）。
* 用0到N个运算符（配合必要的小括号）把若干常量和变量连在一起进行运算，即一个表达式。表达式和常量、变量一样具有一个特定的类型。需要知道不同运算符产生的结果是什么类型。
* 运算符有优先级（比如四则运算中的先乘除后加减就是说明乘除优先级比加减高）。通常按照自然清晰易理解的方式来写的表达式，优先级就是正确的；如果拿不准或觉得不清晰，就加小括号。
* 语句表示一个指令，即让电脑做一件事。因为Python不像C语言使用分号作为语句结束符，所以Python中表达式和语句的区别并不明显，把某个表达式的结果赋值给一个变量就是一种常见的语句。下面还会提到控制流语句。另外，在交互式执行时，Python解释器会把表达式的值显示出来；而在执行代码文件时，只有print语句指定的对象才会被输出，单独使用一个表达式作为语句，相当于计算这个表达式的结果，然后把结果丢弃。

### 控制流(Control flow)

* 编程语言有3种基本控制结构：
    * 顺序结构(Sequence)，即若干语句顺序排列。这样一组语句是一个代码块(Block)，可以作为整体出现在分支结构或循环结构中。Python用连续的相同缩进表示同一个代码块。
    * 分支结构(Branch/Selection/Conditional)，根据条件走到不同分支。Python中是`if-else`语句。
    * 循环结构(Looping/Iteration)，根据条件重复执行一段代码。Python中是`for`或`while`语句。
    * 再复杂的程序，大体上也可以认为是由这3种基本控制结构组成的。下图是这3种控制结构的图示，蓝色和绿色是等价的，蓝色画起来简单，绿色看起来更容易理解。
    ![3种基本控制结构的图示][Structured_program_patterns]
* 特殊的控制结构：
    * 递归(Recursion)，与循环结构相似，但逻辑含义和可读性不同，通常可以等价转换。
    * 异常处理，一种特殊的分支结构。Python中是`try-except`语句。
    * 子程序(Subroutines)，Python中称为函数(Function)，可以把一段代码封装成一个有命名、可反复调用的单元。好处：1.增加代码可读性；2.避免重复代码。

### 面向过程编程(Process-oriented programming)与面向对象编程(Object-oriented programming, OOP)

* Python既支持面向过程编程，也支持基于类的面向对象编程。
* 面向过程编程就是上述控制流语句的组合。
* 面向对象的相关概念：
    * 类(Class)：可以看作一种自定义类型，包含若干成员变量并支持若干操作（方法）。
    * 继承(Inheritance)：子类可以继承父类的成员变量和操作。

### 组织代码：模块(Module)和包(Package)

* 大型的程序通常不会把代码全部放在一个文件里，而是用模块化的方式进行拆分，方便维护和复用。
* Python通过模块和包来组织代码。一个代码文件对应一个模块，一个文件夹对应一个包。有时会用“模块”来统称。

### 标准库、第三方库

* 用Python做具体工作时，标准库和第三方库通常是必备的。标准库和第三方库都是通过模块和包来实现的。标准库会随着Python解释器默认安装在系统上；第三方库需要额外单独安装。
* 熟悉标准库文档的大体结构和检索方式，需要时快速查找：[The Python Standard Library](https://docs.python.org/3/library/index.html)
* 通过Python的包管理工具pip可以方便地查找、安装第三方库。
* 如果用Python做数据分析、科学计算，也可以选择[Anaconda](https://www.continuum.io/why-anaconda)这种打包发行版，默认安装了一组相关工作必需的第三方库。

# 更多Python学习资源

Python官方文档的入门教程：[The Python Tutorial](https://docs.python.org/3/tutorial/)

Python官网列举的学习资源：[Python for Non-Programmers](https://wiki.python.org/moin/BeginnersGuide/NonProgrammers)

[*Beginning Python: From Novice to Professional*](https://book.douban.com/subject/26883151/)是很不错的入门书。有一个[2014年的中译本](https://book.douban.com/subject/25880388/)。

PyCharm是现今业界最流行的Python集成开发环境(IDE)。它还提供了一个教育版，内含一个练习教程，也许会更容易学习；但教育版的功能比社区版少一些。[Free, Easy & Professional Tool to Learn Programming with Python](https://www.jetbrains.com/pycharm-edu/)
![PyCharm Edu界面截图][pycharm-edu]


[Structured_program_patterns]: https://upload.wikimedia.org/wikipedia/commons/e/ec/Structured_program_patterns.png "Graphical representations of the three basic patterns using NS diagrams (blue) and flow charts (green). from Wikipedia."
[pycharm-edu]: {{ site.img }}/pycharm-edu.png "PyCharm Edu的内置练习"
