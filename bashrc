#
# ~/.bashrc
#

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

# Aliases
alias i='sudo pacman -S'
alias v='vim'
alias e='emacs & disown'
alias ls='ls --color=auto'

alias getfile='echo \"$(find -type f -not -path "*/.*" | fzf)\" | sed "s/.\///" | tr -d "\n" | xclip -selection primary\"';
alias getfolder='echo \"$(find -type d | fzf)\" | sed "s/.\///" | tr -d "\n" | xclip -selection primary\"';

# Function
fcd() {
	cd $(find ~ -type d -not -path '*/.*' | fzf)
}

PS1='[\u@\h \W]\$ '
