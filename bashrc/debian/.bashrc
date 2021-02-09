# if not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

set -o vi

# aliases
alias update='sudo apt update && sudo apt full-upgrade && sudo apt autoremove'
alias install='sudo apt install'
alias please='sudo !!'
alias sync='sudo apt update'
alias remove='sudo apt remove'
alias search='apt-cache search'
alias reboot='sudo systemctl reboot'
alias poweroff='sudo systemctl poweroff'
alias ls='exa -l --color=always --group-directories-first'
alias la='exa -al --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'
alias weather='curl wttr.in'
alias hisgrep='history | grep --color=auto'
alias df='df -h'
alias free='free -m'
alias audio='alsamixer'
alias find='sudo find'
alias ..='cd ..'
alias ...='cd ../..'
alias dotfiles='git clone https://github.com/jdog382/dotfiles.git'
alias gp='git pull'
alias gc='git clone'
alias gs='git status'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias kp='killall pcmanfm'
alias or='openbox --replace && exit' 
alias linfo='inxi -Fxxxrza'
alias mv='mv -iv'
alias rm='rm -iv'
alias cp='cp -iv'
alias playlist-dl="yt -cio '%(autonumber)s-%(title)s.%(ext)s'"
alias yt-aac="yt --extract-audio --audio-format aac"
alias yta-best="yt --extract-audio --audio-format best"
alias yt-flac="yt --extract-audio --audio-format flac"
alias yt-m4a="yt --extract-audio --audio-format m4a"
alias yt-mp3="yt --extract-audio --audio-format mp3"
alias yt-opus="yt --extract-audio --audio-format opus"
alias yt-vorbis="yt --extract-audio --audio-format vorbis"
alias yt-wav="yt --extract-audio --audio-format wav"
alias yt-best="yt -f bestvideo+bestaudio"
alias yt='youtube-dl'
alias ytv='yt -f bestvideo'
alias yta='yt -f bestaudio'

# exports
export VISUAL=vim || export VISUAL=vi
export EDITOR="$VISUAL"
export TERMINAL="kitty" || export TERMINAL='alacritty' || export TERMINAL='st'
export BROWSER="brave" || export BROWSER='brave-bin' || export BROWSER='firefox'

PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# archive extractor, usage: ex <file>
ex ()
{
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xjf "$1"   ;;
      *.tar.gz)    tar xzf "$1"   ;;
      *.bz2)       bunzip2 "$1"   ;;
      *.rar)       unrar x "$1"   ;;
      *.gz)        gunzip "$1"    ;;
      *.tar)       tar xf "$1"    ;;
      *.tbz2)      tar xjf "$1"   ;;
      *.tgz)       tar xzf "$1"   ;;
      *.zip)       unzip "$1"     ;;
      *.Z)         uncompress "$1";;
      *.7z)        7z x "$1"      ;;
      *.deb)       ar x "$1"      ;;
      *.tar.xz)    tar xf "$1"    ;;
      *.tar.zst)   unzstd "$1"    ;;      
      *)           echo "'$1' cannot be extracted" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"