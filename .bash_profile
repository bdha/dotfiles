PS1='\D{%H:%M:%S} \h:\w\$ '

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

. $HOME/.ssh/agent.sh

#export PATH="$HOME/bin:/bin:/bin:/sbin:/usr/bin:/usr/sbin:/opt/local/sbin:/usr/local/git/bin:/usr/local/bin:/usr/local/sbin"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

export PATH=$PATH:$HOME/node_modules/.bin:$HOME/bin:$HOME/go/bin
export GOPATH=$HOME/go

alias ls='ls -F --color'
alias ll='ls -la'
alias now='date +%Y%m%d-%H:%M:%S'
alias gpush='git push origin master'
alias gpull='git fetch origin && git reset --hard origin/master'
alias ops='eval $( op signin horstmann_allen )'
alias opl='op list items --vault=Private'
alias ghil='ghi list -O joyent'

if [ `which vim` ] ; then
  alias vi='vim'
  export EDITOR="vim"
fi

#eval $(/usr/libexec/path_helper)
#eval "$(triton env --docker spc-1a)"

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

#eval $( op signin horstmann_allen )

export PATH="$HOME/.cargo/bin:$PATH"

source $HOME/.manta/joybdha
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"
source $HOME/.ghi_token
