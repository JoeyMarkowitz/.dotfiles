# .bash_profile

###
#
# Load custom aliases and functions
#
###
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi


###
#
# User specific environment and startup programs
#
###
PATH=$PATH:$HOME/bin
export PATH
export HISTTIMEFORMAT="%F %T "
export HISTSIZE=5000
export HISTFILESIZE=5000
export HISTCONTROL=ignoredups:ignorespace


###
#
# custom git prompt support
#
####
# SOURCE: https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
source ~/.dotfiles/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE="enabled"
export GIT_PS1_SHOWSTASHSTATE="enabled"
export GIT_PS1_SHOWUPSTREAM="git"
export GIT_PS1_SHOWCOLORHINTS="enabled"
export GIT_PS1_HIDE_IF_PWD_IGNORED="enabled"

#git status on right side (single color)
#export PS1="\[\033[0;33m\]\D{%b%d %H:%M} \u@\h \W$(__git_ps1 " (%s)"): \[\033[0m\]"

#git status on left side (single color)
#export PROMPT_COMMAND='__git_ps1 "" " \[\033[0;33m\]\D{%b%d %H:%M} \u@\h \W: \[\033[0m\]"'

#bash prompt color definition
yellow='\e[0;33m'
green='\e[0;32m'
txtrst='\e[0m'    # Text Reset

#alternating color git status on right side (multi color)
#export PROMPT_COMMAND='__git_ps1 "\[\e[0;32m\]\D{%b%d %H:%M}\e[0m\] \[\e[0;33m\]\u@\h\[\e[0m\] " " \[\e[0;33m\]\W:\e[0m\] "'
export PROMPT_COMMAND='__git_ps1 "\[$green\]\D{%b%d %H:%M} \[$yellow\]\u@\h\[$txtrst\] " " \[$yellow\]\W:\[$txtrst\] "'


