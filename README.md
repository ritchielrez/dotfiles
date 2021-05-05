# Dotfiles



## My Linux Desktop

![](./Desktop_Screenshot.png)



## What is dotfiles?

Dotfiles are the customization files that are used to personalize your Linux or other Unix-based system.  You can tell that a file is a dotfile because the name of the file will begin with a period–a dot!  The period at the beginning of a filename or directory name indicates that it is a hidden file or directory.  This repository contains my personal dotfiles.  They are stored here for convenience so that I may quickly access them on new machines or new installs.  Also, others may find some of my configurations helpful in customizing their own dotfiles.



## Configs of mine: 

1. i3-gaps
2. xfce4-panel
3. dunst ( *notification daemon* )
4. picom ( *compositor* )
5. sxhkd ( *hotkey daemon* )
6. polybar ( *I don't use it anymore* )
7. neovim ( *for c++ development* )
8. vim
9. zsh ( *with zsh-autosuggestions, zsh-syntax-highlighting* )



## How to install all of these programs?

**For i3-gaps: **

```shell
sudo add-apt-repository -y ppa:regolith-linux/stable
sudo apt install i3-gaps
```

**For polybar:**

```shell
sudo apt install polybar
```

**For neovim:**

```shell
sudo apt install neovim
```

**For neovim plugins:**

```shell
sudo apt install nodejs npm
```

**For vim:**

```shell
sudo apt install vim
```

**For zsh:**

```shell
sudo apt install zsh
```



## What to do with dotfiles?

There are a hundred ways to manage your dotfiles. Personally, I use the **Git, Github and GNU Stow** for managing my dotfiles. 

Articles discussing dotfiles management are listed below:

- [Managing dotfiles with style with rcm](https://distrotube.com/guest-articles/managing-dotfiles-with-rcm.html) (Ronnie Nissan)
- [Interactive dotfile management with dotbare](https://distrotube.com/guest-articles/interactive-dotfile-management-dotbare.html) (Kevin Zhuang)



