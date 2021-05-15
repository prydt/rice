#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim="nvim"

# prompt
PS1='[\u@\h \W]\$ '

# for z
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

# import wal theme
(cat ~/.cache/wal/sequences &)

export PATH="$PATH:$HOME/.emacs.d/bin:$HOME/go/bin"
