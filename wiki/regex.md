---
layout: wiki
title: "Regular expression"
---

# Resources

* [正则表达式30分钟入门教程](http://deerchao.net/tutorials/regex/regex.htm)
* [Regular_expression](https://en.wikipedia.org/wiki/Regular_expression)
* [Regexr.com](http://regexr.com/)

# Different versions

| Version | Applications |
| --- | --- |
| BRE (POSIX Basic) | grep, sed, awk?, emacs? |
| ERE (POSIX Extended) | grep -E |
| Perl regex | grep -P, most of programming languages (Perl, Python, JS, Java, C#) |
| Vim regex | vim |

Syntax differences:

* Perl regex as a de facto standard.
* In BRE/ERE, use `[0-9]`, `[ \t]` instead of `\d`, `\s`.
* In BRE, add backslash before `()`, `{}`, `|`, `+`.
* No `?` in BRE.
* Use `:h pattern` to check Vim regex.

Quick Ref Card: [RegExDiff](/doc/RegExDiff.txt)
