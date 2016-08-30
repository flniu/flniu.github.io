---
layout: post
title: "建站笔记(Github Pages+Jekyll)"
date: 2016-08-30 22:31:49 +0800
categories: website
tags: web blog jekyll github
---

终于下决心建一个博客，记录日常的技术学习和思考。

现阶段的需求就是有一个博客平台，能够最简单地开始写博客，并不希望在建站本身花费过多时间；同时希望能够支持markdown以及与Github更好地集成。于是，Github Pages+Jekyll的方案是自然之选。

主要做了这么几件事：

* 注册一个Github账号，并创建Github Pages的repo: [flniu.github.io](https://github.com/flniu/flniu.github.io)。（从前那个Github账号注册很久，没怎么用，ID也不好，索性弃了重新来。）
* 在本机上安装Ruby和Jekyll，并创建一个Github Pages的blog site。参考：[Using Jekyll as a static site generator with GitHub Pages](https://help.github.com/articles/using-jekyll-as-a-static-site-generator-with-github-pages/)
* [Using a custom domain with GitHub Pages](https://help.github.com/articles/using-a-custom-domain-with-github-pages/)这一步暂时省略。因为没有注册域名。
* Jekyll内置的主题[jekyll-new](https://github.com/jglovier/jekyll-new)已经可以满足写博客的要求。但还是想稍微调整一下网站布局，于是在[Jekyll Themes](http://jekyllthemes.org/)浏览了几个主题，比如taken, thinkspace, 简单博客, Sciblog, Nice_Blog, Minimal, resumecard这几个都简洁而有特色，Documentation Theme for Jekyll似乎很适合写文档，不过这些主题似乎都是一个Jekyll blog site而不是Jekyll官方建议方式发布的Theme。最终决定自己动手改。
* 参考Nice_Blog制作了Archive, Categories, Tags几个页面。
* 参考resumecard制作了Skill List。在整理自己的Skill List时，感觉自己真是把技能树修炼成了技能草原……
* Disqus据说是个和Jekyll结合很好的评论系统，不过暂时没搞。看到[猫尾博客](https://cattail.me/)用Github issues作为留言工具，我觉得这个想法相当灵光，当然比起专门的评论系统有局限，但是够简单，而且和Github结合完美。
* 做了一些自定义的调整之后，决定建站工作暂时收工。接下来是写博客、添加内容的工作。

主要参考文档：

* [Github Pages官方文档](https://pages.github.com/)
* [Jekyll官方文档](http://jekyllrb.com/docs/home/)
* 自定义页面的时候查看[Liquid for Designers](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers)。
* [Font Awesome](http://fontawesome.io/icons/)的图标很好用。
* 写博客时偶尔需要翻翻[kramdown Syntax](http://kramdown.gettalong.org/syntax.html)。

遗留问题：

* 对Jekyll的工作原理以及Jekyll和Github Metadata的关系还理解得不清楚。本地`jekyll serve`时，当页面修改超过两次，Regenerating会出错，尚未解决。
* 页面布局不够好，未来考虑用Bootstrap重新设计一下。
