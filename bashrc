#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grp='grep --color -rn'
PS1='[\u@\h \W]\$ '
