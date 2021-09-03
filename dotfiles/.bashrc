#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim="nvim"
alias vact="source ./venv/bin/activate"
alias diary="python /home/pry/repos/diary/diary.py"

# prompt
PS1='[\u@\h \W]\$ '

# for z
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

# import wal theme
(cat ~/.cache/wal/sequences &)

export PATH="$PATH:$HOME/.emacs.d/bin:$HOME/go/bin"
HISTSIZE=5000
HISTFILESIZE=10000

export RISCV=$HOME/RISCV
export PATH=$PATH:$RISCV/bin
