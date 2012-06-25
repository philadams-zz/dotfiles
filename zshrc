# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="flyingdragon"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# set PATH
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/python/2.7.1/bin:/Users/phil/.gem/ruby/1.8/bin:/Users/phil/Code/android-sdk-mac_x86/tools:/Users/phil/Code/android-sdk-mac_x86/platform-tools/:$PATH

# set MANPATH
export MANPATH=/usr/local/man:$MANPATH

# bash history control
export HISTCONTROL=erasedups
export HISTFILESIZE=10000

# set system aliases
alias ls='ls -AFG'
alias diff='diff -u'
alias locate='locate -i'
alias dos2unix='dos2unix -c mac'
alias e='mvim'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
alias p='python'
alias pp='bpython'
alias json='python -m json.tool'
alias cat='lolcat'

# useful functions
dff() { # pipe diff thru colordiff
    diff $* | colordiff
}
topten() { # 10 most common recent commands
    history | awk '{print $2}' | sort | uniq -c | sort -rn | grep -v 'topten' | head -10
}
myip() {
    curl http://ip.appspot.com
}
calc() {
    echo "$1" | bc
}
function set_window_title() # set the window title
{
  #echo -e "\033]0; ${1:-$USER@$HOST - $SHLVL} \007";
  echo -e "\033]0; ${1:-$USER@$HOST} \007";
}

# editors
export EDITOR=vim
export VISUAL=vim

# grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='32;1;4' # green, bold, underline

# ls
#export LSCOLORS='dxcxcxdxbxegedabagacad'

# set window title
set_window_title

# enable autojump
if [ -f `brew --prefix`/etc/autojump ]; then
    . `brew --prefix`/etc/autojump
fi
