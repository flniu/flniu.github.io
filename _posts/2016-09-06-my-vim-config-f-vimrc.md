---
title: "我的Vim配置：f-vimrc"
date: 2016-09-06 12:25:37 +0800
tags: vim pathogen vim-plug
---

最近在换工作的空当期，花时间整理了一下用了很多年的vim配置，清理掉一些多余的配置项，最终形成这个[f-vimrc][]。

# 目标、原则、设计思路

有不少人倾向于把Vim打造成一款准IDE，如[spf13-vim][]、[fisa-vim-config][]、[k-vim][]是几款不错的配置，从他们的代码中也可以学到很多Vim技巧和设计思路。然而我觉得这样的配置太重了。我倾向于把Vim当作一款统一的文本查看及编辑器，比如查看编辑单个代码或配置文件、查看Log文件、读TXT文档（配合[txt.vim][]）、写博客（Jekyll或Pelican）、等等。如果Vim需要加载的配置很多，启动都有了可察觉的延迟，那就不符合文本编辑器的本义了。况且IDE并不是Vim的优势，PyCharm(Python)、IntelJ(Java)、Visual Studio(.NET)在各自领域都有着不可取代的优势。

所以我的设计思路就是让Vim配置尽可能简单，尽可能通用，可以平滑地迁移到不同的工作环境(Mac/Linux/Windows, GUI/Console, Desktop/Server)，哪怕是不能访问外网、不能轻易安装或升级软件的服务器。这算是一种Vim配置的**“优雅降级”**（前端术语）吧。（此前看到一种说法：“最通用的配置就是不加个性化配置，这样才能保证在各种环境的使用习惯完全一致。”这样未免过于极端，无法发挥Vim的强大，而且毕竟大多数时候我们的工作环境是相对固定的。）

# 插件管理

Vim已经有了数种不同的插件管理工具，由于“选择困难症”，我一直没有用，长期仍然采用Vim自带的插件机制，并遵循自己的极简主义、只安装少量必备插件的原则，直到后来尝试之后，才发现之前的思路太古板了。

[pathogen][]严格地说并不算插件管理，只是管理Vim的`'runtimepath'`（查看`:h 'rtp'`），这样不同的插件可以统一在各自的目录下，结合Git，可以很轻松地添加或删除插件。而且，有些过于个人化的配置，可能只在家用电脑上使用，我不想放在f-vimrc的配置中，于是统一放在`bundle/myconfig.vim`目录下。pathogen下的插件可以用`git submodule`管理，我试了一下，与vim-plug相比有点显得麻烦了。

[vim-plug][]则是一款和vundle等相似的插件管理器，但添加插件的语法更简洁，而且没有特殊需求，比如在没有`+python`、`+python3`的Vim上也可以使用，但有的话则可以并行下载插件，效率更高。这也是**“优雅降级”**。

以上两种插件管理工具选择其一就可以了。而我觉得二者都是非常简洁优雅的设计，功能也略有差异，于是把它们都包含在了f-vimrc的项目中。

在[Vim Awesome][vimawesome]可以看到大量常用的插件和几种几乎形成事实标准的Vim插件管理器。

# 美观问题

## 主题

molokai和solarized似乎是目前非常流行的两款Vim主题。我尝试之后，还是偏爱Vim内置的desert。可惜内置版desert不支持Terminal下的配色，所以项目中还包含了一个第三方的desert256主题。

## 字体

目前在Windows环境使用的是Courier_New字体。

新的等款字体还有待尝试。

## 状态栏

[vim-airline][]也是目前非常流行的一款炫酷状态栏插件，而且与一大批插件配合良好。不过似乎依赖一些字体和第三方工具。

我使用自己的状态栏已经习惯，暂时就没有去折腾vim-airline。未来可以尝试，或者借鉴其中的思路，比如显示git相关信息。

# 其它

* 添加了详细的README和注释。
* 经过重新整理vim配置，把自己的`vimfiles`从VIM安装目录移到了HOME目录，VIM安装目录变得更干净，可以更轻松尝试新版本了。尝试development版本是个好习惯，体验新特性，参与反馈。Tux Project提供了一个[社区版的Vim Windows Build][tuxproject-vim]，更新比较及时。未来准备尝试用[appveyor][]自己Build。
* 有人说“当一个人学会配置vimrc，TA能折腾一年”。回头看看自己在f-vimrc上花了一周多的时间，废寝忘食。要适可而止。工具是为使用服务的，在项目中根据需求调整配置才是更好的选择。
* 让自己快速进入刷Github的状态。
* 参考了这篇博文：[Vim、Emacs 和 IDE][vim-emacs-ide]



[f-vimrc]:          https://github.com/flniu/f-vimrc
[spf13-vim]:        http://vim.spf13.com/
[fisa-vim-config]:  http://fisadev.github.io/fisa-vim-config/
[k-vim]:            https://github.com/wklken/k-vim
[txt.vim]:          https://github.com/flniu/txt.vim
[pathogen]:         https://github.com/tpope/vim-pathogen
[vim-plug]:         https://github.com/junegunn/vim-plug
[vimawesome]:       http://vimawesome.com/
[vim-airline]:      https://github.com/vim-airline/vim-airline.git
[tuxproject-vim]:   https://tuxproject.de/projects/vim/
[appveyor]:         https://www.appveyor.com/
[vim-emacs-ide]:    http://wulfric.me/2016/05/editor-vim-emacs/
