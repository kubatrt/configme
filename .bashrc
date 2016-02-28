# .bashrc
# Jakub Buyrznski 2015

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls --color'
alias ll='ls -l --color'

alias grepc='grep -iIRn --color=always'
alias findf='find ./ -name'

# Source global definitions
if [ -f /etc/bashrc ]; then
	./etc/bashrc
fi

export PS1="\[\e[01;37m\]\u\[\e[0m\]\[\e[00;37m\]@\h:[\[\e[0m\]\[\e[00;33m\]\w\[\e[0m\]\[\e[00;37m\]]: \[\e[0m\]"

# use newer tools versions
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/fpsdk/pkgs/gtest-1.7.0-rhel6-x86_64/lib/
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/fpsdk/pkgs/boost-1.54.0-hotfix-1-rhel6-x86_64/lib/
