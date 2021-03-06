---
title: "关于可汗学院的读书笔记和思考"
subtitle: "Thinking about Khan Achademy"
date: 2016-11-06 23:29:28 +0800
tags: education
---

[Khan Achademy](https://www.khanacademy.org/)（[可汗学院中国](https://zh-hans.khanacademy.org/)）成立于2006年，引起广泛关注应该是2011年其创始人Salman Khan的TED的演讲[Let's use video to reinvent education](https://www.ted.com/talks/salman_khan_let_s_use_video_to_reinvent_education)（[中文字幕版](http://open.163.com/movie/2011/7/C/6/M77ESEJF8_M77ESRDC6.html)）之后。2012年被称为“[MOOC](https://en.wikipedia.org/wiki/Massive_open_online_course)之年”，可汗学院在这一年也得到了更多关注。如今又是4年过去，可汗学院已经成立10年了。

今年读了可汗学院创始人写的[《翻转课堂的可汗学院》](https://book.douban.com/subject/25886309/)（书名直译是“教育再想象”）。从书中感觉到，作者既有变革者的想象力和打破常规，又有工程师的严谨和务实；可汗学院的目标虽宏大（"to provide a free, world‑class education for anyone, anywhere."），却完全是在实践中一点点生长而成；可汗学院的实践方式则结合了最新的互联网技术和已经存在很久的教育学理念。这样的组合，着实产生了一些激动人心的结果。


# 可汗学院与MOOC的区别

尽管表面看来可汗学院与MOOC很相似，但与典型的MOOC如Coursera, Udacity, edX相比，可汗学院还是有一些明显的区别。

MOOC（Massive open online course, 大规模开放在线课程），类似于传统远程教育在互联网时代的新形式，主要模式是高校课程资源在社会范围内的无限制共享和参与，因而更适用于成年人的终身教育（中国过去称之为“成人教育”，听起来怪怪的……）。

可汗学院则更针对K12教育（尽管它也有许多终身教育的课程资源）。相对于“大规模开放在线课程”，可汗学院所设计的一套针对基础教育的功能和机制才是更关键更核心的特性。


# 可汗学院的功能设计

## 用户角色和功能

在可汗学院的[Help Center](https://khanacademy.zendesk.com/hc/en-us)可以对其主要功能有一个概览。Help Center针对以下5种身份的用户分别提供了使用说明：

* Learners: 学习者，学生。
* Teachers & Coaches: 老师和指导。
* Parents: 家长。（主要针对13岁以下学习者的监护人）
* Volunteers & Donations: 志愿者和赞助。（多种形式的参与方式）
* Translators: 翻译。（课程内容的国际化）

在可汗学院网站系统的实际使用中，除了提供课程内容的Content Specialists、志愿者、翻译之外，核心的角色只有两个：学习者(Learner)、指导者(Coach)。

## 学习者(Learner)

可汗学院给学习者（特指K12阶段的学生，暂不考虑终身教育）提供了以下功能：

* 短视频课程：形式是 **10分钟左右的短视频**，针对一个知识点进行讲解，只包含演示板(Slide)和讲解的声音，不包含讲解人的视频画面。
* 练习（包含了反馈、辅助和评估）：针对特定知识点，程序可以为学生生成 **源源不断的练习题目**。这些练习题目会 **根据学生的学习情况提供给学生**（何时需要更多练习、何时需要进入下一知识点、何时需要复习、等等），并给予相应的反馈。当学生遇到困难时，系统会给学生 **逐步的提示**，帮助学生思考解题的过程，而不仅仅是正确答案。而 **所有这些练习过程中的数据会收集起来**，对学生的学习情况进行评估（是否已经掌握某个知识点？是否在某个新知识点遇到困难？是否在某些基础知识点存在缺口？等等），并形成跟踪报告。
* 学习进度跟踪报告：每个学生都会在学习短视频课程和练习中形成 **自己独有的学习进度跟踪报告**，因而每个学生可以自行调整进度。学生对应的指导者可以在报告中看到所有学生的学习情况，及时发现遇到困难的学生并给予帮助。
* 知识地图和学习目标建议：学科知识是一个网状结构，既有前后的依赖关系，又有可供选择的分支路径。可汗学院的知识地图可以告诉学生在掌握当前知识点之后，下一步可以探索哪些知识点。学生的指导者也可以为学生提供学习目标建议。

## 指导者(Coach)

学习者可以添加任意用户为自己的指导者，包括老师、家长、同伴。当然，在主要的应用场景中，指导者是专职的老师。老师可以看到所有学生的学习进度跟踪报告，不仅对班级的学习情况、每位学生的进度有一个及时而直观的了解，而且还可以在这些数据（可视化展示）中了解不同个体的学习方式、思维过程和成长潜力。这些数据实际上提供了第一手的教育学研究材料。

>对“遇到瓶颈”的粗略定义为我们提供了框架，但我们该怎样做才能让老师发现哪名学生需要帮助呢？克里斯汀建议采用一个以天为单位的电子表格，每名学生占据一行，每个知识点占据一列，在学生和知识点的交叉处有一个单元格。我们将学生的答题数、正确数、错误数、连续正确数以及答题总时长记录在单元格中，这样，电子表格就会为我们提供一个简单且直观的数据，让我们了解到哪名学生遇到了困难，以及在哪里遇到了困难。

>通过这个软件，我们可以了解学生在答对的题目和答错的题目上哪一个用时更多，他们是通过逻辑推理逐步算出答案还是通过几何作图立刻得出答案的，哪些错题是由于粗心造成的，而哪些是因为没有掌握概念之间的联系。如果学生完全理解了一个概念，那么他们答题的效果又会是怎样的呢？对于一个概念，学生是通过总结大量的例子逐渐理解的还是突然顿悟的？如果学生做的试题只囊括了某一个概念而不是像大杂烩一样包含了多个概念，学生答题的情况又会发生怎样的变化呢？


# 精熟系统(Mastery System)

“[精熟教学法(Mastery learning)](https://en.wikipedia.org/wiki/Mastery_learning)”是1919年美国激进教育家卡尔顿·沃什伯恩提出的，其理念是：

* 只要教学条件能够满足学生的需要，那么所有学生都能掌握知识，任何学生都不会掉队或成绩不佳；
* 课程的进度应按照每个学生的不同需求来制定，而不是人为规定一个统一的进度；
* 学生在进入更高难度的学习阶段之前，应充分理解之前所学习的概念。

在精熟教学法看来，学生的学习结果是常量（所有学生都能掌握知识），而学生花的时间是变量（不同学生在不同学习阶段的进度可能不一样）。而在传统学校教育中，因为老师需要统一控制进度，结果是学习的时间是个常量（一个学期），而学生对知识的掌握程度却是变量（有的学生优、有的学生刚及格）。

所以在当时，精熟教学法是非常激进的一种教育理念。然而，互联网和IT技术，却使得不同学生采用不同的学习进度成为了可能。

>随时随地学习和自主掌控节奏能够从根本上激发学生学习的热情与兴趣，而那些能够真正掌控自学进度的学生需要另一种资源：对于已学过的课程，学生们必须有易于获得且源源不断的复习资源。与传统的课本和学习资料相比，互联网学习在这方面具有很大优势。这些课程可以重复利用，永远都不会消失。

Mastery是精通、熟练掌握的意思。参照书中译法，把可汗学院的Mastery System也译作“精熟系统”。

如今可汗学院的精熟系统与书中介绍的最初采用的原始方法相比已经有了很多改进，但核心功能仍然是：

* 通过数量可变的练习让学生熟练掌握知识点。
* 通过量化的评估方法（比如连续答对10道题）判断学生是否已经完全掌握该知识点。（给现实概念下“操作定义”充分体现作者的工程师思维）
* 帮助学生发现基础知识的缺口，并在合适的时间提供复习。（可联系艾宾浩斯记忆曲线）

所以在作者看来，传统的教学和考试一方面是在教学进度和考纲范围上过于严格，让学生苦恼又沉重，另一方面却是对学生期望太低（只要70分就算及格），粗暴地给学生贴标签（分成优等生和差生），压制了学生的自信心和自主性。这种初看似乎矛盾的两方面，深入思考觉得妙不可言。

>传统的课程不仅会限制学生学什么，还会规定学生在何处停止学习，结束一节节课，学完一门门科目，为什么老师不鼓励学生学得更多、更深入——比如将课业负担翻倍呢？也许究其原因，是我们设定的标准太低，我们只要求学生能够答对考试中70%的题目。由于设定了最低标准，我们将注意力聚焦于“失败”这个概念上，我们厌恶失败，因失败而感到难为情，却在这个过程中削弱并贬低了“成功”的意义。我们降低了对学生的期望，这在无形中也让学生降低了对自己能力的信任。

>我敢肯定的是，我的弟弟妹妹以及其他所有学生都需要别人对他们寄予更高的期望。答对80%或者90%的题只能说还算不错，但我对他们的要求是连续答对10道题。这种要求听起来似乎太过严苛和理想化，学生很难做到，但在我看来，这是唯一能够在继续沿用现有的科目试题的同时准确评估学生的标准（我们并没有改变考试的基本理念，只是改良了评分细则）。没错，这个要求的确很高，但其目的并不是让学生受挫，而是激励他们成功。在这种目标的激励下，学生们会不断尝试，直至达到这个较高的标准。
>
>我相信，只要给予每名学生他们所需的工具和帮助，他们对数学和科学的掌握就能达到这个标准。我还相信，如果学生在没有达到这一标准的情况下开始学习更高难度的知识，那么他们很有可能在之后的学习中遇到瓶颈。

可汗学院的诞生过程及其对精熟教学法的选择，大约也体现了作者自己的学习理念及方法。（作者拥有MIT的数学学士、电气工程与计算机科学学士及硕士3个学位和哈佛商学院的MBA学位，这种白炽状态的学霸光环真是散发魅力）


# 翻转课堂(Flipped Classroom)

可汗学院另一个引人注目的特点，是它并不仅仅是在线课程或远程教育，而是采用了[混合式学习(Blended learning)](https://en.wikipedia.org/wiki/Blended_learning)的模式。

可汗学院在美国几个社区的实践，形成了翻转课堂这种颠覆式的教学法。翻转课堂指的是让学生按照自己的学习进度在家中听课，然后在课堂上与老师和同学一起解决疑问。这样翻转的结果是：

* 把课堂时间从讲课中解放出来，留给更宝贵的人际交流（答疑、讨论、实践）。
* 学生在课堂之外通过视频课程学习知识，可以自行掌握进度和方向（这两点也会受到老师的指导和同学的激励）。
* 视频课程可以来自世界第一流讲师。


# 对教育的畅想

书的最后，作者还提出了对教育的一些畅想，而这些畅想事实上正在逐渐地变成现实。

## 让学校成为学生独立思考和创造的空间

>我理想中的学校每天只会花1、2个小时的时间讲授基本的课程内容，而会给学生留出大量时间（而非课间休息）和空间，为他们提供一个独立思考并能随时寻求帮助的环境，这样的学校才能最终成为学术的圣殿、创新的沃土和情感的源泉。
>
>我坚信，只要学生对基础概念的理解足够透彻，那么他们就可以对几乎所有概念产生直观的认识。在去追求成果之前，学生必须打下坚实的根基。一个简单且浅显的事实是，学生根本不用耗费过半的精力去学习基础知识。利用由学生自定进度的视频课程，再加上计算机反馈和教师团队的帮助，学生每天只需花1~2个小时学习基础课程，却空出了5~7个小时可以去开展个人或团体的创新项目，比如创作诗歌、编写计算机代码、拍摄电影、制造机器人、绘画或者开展与物理或数学有关的小实验——需要谨记的是，最初的数学、科学和工程学从本质上来讲与艺术无异，只是名称不同而已。

## 学生的年假制：更自由地安排学业

>我的观点是应该取消固定的暑期时间，允许学生在需要时自行申请休假——与公司的休假体系差不多。如果学生能够与不同年龄层的学生一起学习并遵循自主的学习进度，那么我们就无需人为规定学生进入下一个年级的时间。如果学生的家人想去欧洲旅行，或者有人来家里共度假日，或者学生自己想创业，都没有问题，只要申请放假即可。学生也不会“错过”某节课，因为他们是按照自己的进度学习的。更棒的是，由于有了定制的视频课程和练习，学生在放假期间仍然可以继续学习。同样，老师也可以享受到这种休假方式的灵活性。由于班级里有多名老师在实施教学，老师们可以在一年的时间里轮流休假，学校也不会要求老师放弃调休或旅行，因为老师休假并不会影响学校的整体教学安排。

## 学生的学习档案

>我还将从两方面对学生进行评估，并将它们作为评估的核心。其一是持续多年的跟踪调查，不仅包括学生掌握的知识情况，更包括他们的学习方法；其二是体现学生创造力的作品集。
>
>还有一类数据被现今的评估体系忽略了。如今的大学和工作场合非常需要学生具备这样一种品质：帮助他人的能力和热情。 我设想中的大课堂会接收多个年龄层的学生，通过同学之间的互帮互助，学生能够锻炼自己帮助他人的意识。在对学生的教育经历的描述中，老师不仅应写明学生在自己的学习中所付出的时间和努力，还要对学生帮助他人的情况进行记录。我们很容易就能设计出一个软件，对学生这方面的表现进行追踪。这些数据在我看来非常宝贵。一个愿意帮助他人的学生在未来也会成为慷慨大度的同事，在学校里善于沟通的学生在生活中也会待人亲和、善于交际，而能够对概念进行充分解释，往往说明了他们对所讲解的那部分知识已经了如指掌。
>
>如果能为每名学生创建一本历时多年并以数据为基础的文字记录（当然，这份记录中的隐私会得到保护，只供用人单位参考），那么这样的数据不仅具有说服力，还能多方面地展现候选人在进入社会后可能发挥的作用以及他们将来能够做出的贡献。

## 教学、成长过程与专业证书分离

>人们在谈论教育时总会混淆几个概念：第一个是教学，本书花了大量篇幅讨论我们该如何对现有的教学方法进行重新审视，并试图从中找到最佳方法。第二个概念是教育的社会化，这一点我们也在本书讨论同龄人相互合作以及混龄教学时谈过了。第三个概念是证书——也就是发给学生的一张纸，以向大众证明该生已经具备了某种能力。教育的这三个不同方面常常被人们混淆，因为它们通常都是由同一个机构来实施或执行的——我们要去大学学习，积累生活经验，然后获得学位。
>
>在这里，我们可以进行一个简单的思维实验：假设我们将大学授课和颁发证书这两项职责分离，那么教育会发生怎样的变化呢？假设不限制上大学的地点（或者不管是否上过大学），只要学生能够通过严谨且经过国际认证的评估证明自己对某一领域的理解和精通，就可以进入社会找到工作，那么教育又会发生怎样的改变呢？评估的领域可以涵盖各个学科，包括量子物理、欧洲历史、软件工程，等等。有些评估标准可以和用人单位一起制定，以找到掌握了某种特殊技能的人才。由于这些评估系统比很多大学的考试要周密而详细得多，它们可能价格昂贵，每次大约需要花费300美元。任何年龄的人都可以参加这类评估考试。


