---
layout: wiki
title: "Git"
---

# Resources

* *[Pro Git](https://git-scm.com/book)*: The only book you need for learning Git.
* [Git Reference](https://git-scm.com/docs)


# Platform

* GitLab Community Edition
* Douban CODE


# Git Note

### Notations

| Notation | Meaning |
| --- | --- |
| `@` | HEAD |
| `~n` | The nth previous commit, n = 1 if omit n |
| `^n` | The nth parent commit, n = 1 if omit n |
| `A..B` | range between commit A and commit B |
| `A...B` | range from the common ancestor of A and B to commit B |

Examples:

* `git diff @~ @`
* `git diff master..contrib`
* `git diff master...contrib`

See [gitrevisions](https://git-scm.com/docs/gitrevisions) for more details.

### Tips

##### Only clone latest version

```
git clone --depth=1 https://github.com/user/repo.git
```

##### Set remote upstream for existing repo

```
git remote add origin https://github.com/user/repo.git
git branch -u origin/master
```

##### Sync a fork

```
git remote add upstream https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git
git fetch upstream
git checkout master
git merge upstream/master
```

##### Set alias

```
git config --global alias.unstage 'reset HEAD --'
```


# Git的设计之美

1. 根据状态提供相应命令提示，减轻记忆负担。
2. 底层命令+用户命令，易用，可扩展。
3. 优雅的内容寻址文件管理系统。
4. diff的机制。
5. 压缩与清理。

