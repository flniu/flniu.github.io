---
layout: wiki
title: "Vim"
---

# Resources

* [Vim official site](http://www.vim.org/)
* [Vim@github](https://github.com/vim/vim)
* [Vim Tips Wiki](http://vim.wikia.com/)
* [Vim Awesome](http://vimawesome.com/): Vim世界的插件汇集。
* [Vim Windows build](https://tuxproject.de/projects/vim/)
* 我的Vim配置: [f-vimrc](https://github.com/flniu/f-vimrc)


# Install Vim on Mac

```sh
brew install vim macvim
```


# Install Vim on Ubuntu

### Using apt

```sh
sudo apt install vim vim-gnome
```

Vim in apt is not latest version.


### Build Vim from source code

参考: http://vim.wikia.com/wiki/Building_Vim

##### Install build-dep

```sh
# uncomment all deb-src in sources.list
sudo vim /etc/apt/sources.list
sudo apt-get update
sudo apt-get build-dep
```

##### Get source code

```sh
git clone https://github.com/vim/vim.git
```

##### Configure, build, install

```sh
cd vim/src
# make clean if you have built before
make clean && make distclean
./configure --enable-gui=gnome2 --enable-python3interp=yes --enable-rubyinterp=yes
make
sudo make install
```

### Problems on vim-gnome and vim-gtk3

##### vim-gnome

Start gvim from terminal, when quit gvim, it outputs a warning:

```
(gvim:2784): GLib-GObject-WARNING **: cannot retrieve class for invalid (unclassed) type '<invalid>'
```

##### vim-gtk3

When edit some file, gvim may exit and output some errors:

```
➜  ~ gvim any-file.md 
➜  ~ 
(gvim:2333): GLib-CRITICAL **: g_ptr_array_insert: assertion 'index_ <= (gint)rarray->len' failed

** (gvim:2333): CRITICAL **: unity_gtk_menu_shell_get_item: assertion '0 <= index && index < items->len' failed

** (gvim:2333): CRITICAL **: unity_gtk_menu_item_get_child_shell: assertion 'UNITY_GTK_IS_MENU_ITEM (item)' failed

** (gvim:2333): CRITICAL **: unity_gtk_menu_shell_get_item: assertion '0 <= index && index < items->len' failed

** (gvim:2333): CRITICAL **: unity_gtk_menu_item_get_label: assertion 'UNITY_GTK_IS_MENU_ITEM (item)' failed

** (gvim:2333): CRITICAL **: unity_gtk_menu_item_get_icon: assertion 'UNITY_GTK_IS_MENU_ITEM (item)' failed
Vim: Caught deadly signal SEGV
Vim: Finished.
```

In my case, this exit is caused by plugin `vim-markdown`. It seems to be a bug of GTK3 lib on Ubuntu.

