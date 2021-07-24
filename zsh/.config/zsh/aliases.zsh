alias zshconf="nvim ~/.config/zsh/"
alias so="source ~/.zshrc"

alias sc="cd ~/Pictures/Screenshots"

alias cls="clear"

alias config='/usr/bin/git --git-dir=/mnt/c/Repos/dotfiles-new --work-tree=$HOME'

alias e="exit"
alias t="tmux"

alias dots="cd ~/Documents/repos/dotfiles"

alias md="mkdir"

alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push -u --force origin master"

function gac()
{
    git add .
    git commit -m "$1"
}

function gacp()
{
	git add .
	git commit -m "$1"
	git push -u --force origin master
}

### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias todo="nvim ~/.config/zsh/todo.zsh"

alias ls="exa --icons --git"
alias ll="exa -la --icons --git"

alias yt="youtube-dl"

# apt aliases
(( $+commands[apt] )) && APT=apt || APT=apt-get

alias acs='apt-cache search'

alias afs='apt-file search --regexp'

# These are apt/apt-get only
alias ags="$APT source"

alias acp='apt-cache policy'

#List all installed packages
alias agli='apt list --installed'

# List available updates only
alias aglu='apt list --upgradable'

# superuser operations ######################################################

alias afu='sudo apt-file update'

alias ppap='sudo ppa-purge'

alias age="sudo $APT"
alias aga="sudo $APT autoclean"
alias agb="sudo $APT build-dep"
alias agc="sudo $APT clean"
alias agd="sudo $APT dselect-upgrade"
alias agi="sudo $APT install"
alias agp="sudo $APT purge"
alias agr="sudo $APT remove"
alias agu="sudo $APT update"
alias agud="sudo $APT update && sudo $APT dist-upgrade"
alias agug="sudo $APT upgrade"
alias aguu="sudo $APT update && sudo $APT upgrade"
alias agar="sudo $APT autoremove"

