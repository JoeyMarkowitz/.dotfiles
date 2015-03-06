# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep --color=auto'
alias la='ls -lah'
alias ls='ls -F --color'
alias ll='ls -lh'

force_color_prompt=yes

#GIT config
alias glog='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=short --branches'


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
