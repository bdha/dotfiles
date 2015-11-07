PS1='\D{%H:%M:%S} \h:\w\$ '

keychain -q ~/.ssh/selene_dsa
. ~/.keychain/`hostname`-sh

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export PATH="$HOME/bin:/bin:/bin:/sbin:/usr/bin:/usr/sbin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin"
export EDITOR="vim"

alias ls='ls -FG'
alias ll='ls -la'
alias now='date +%Y%m%d-%H%M%S'
alias gpush='git push origin master'
alias gpull='git fetch origin && git reset --hard origin/master'
alias vi='vim'