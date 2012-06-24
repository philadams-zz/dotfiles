# set PATH
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/python/2.7.1/bin:/Users/phil/.gem/ruby/1.8/bin:/Users/phil/Code/android-sdk-mac_x86/tools:/Users/phil/Code/android-sdk-mac_x86/platform-tools/:$PATH

# set MANPATH
export MANPATH=/usr/local/man:$MANPATH

# customize prompt appearance
export HOST=`/usr/sbin/scutil --get ComputerName`
export PS1="\[\e[32;1m\][\u@$HOST: \W] \[\e[0m\]"

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
#alias cat='lolcat'

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
export LSCOLORS='dxcxcxdxbxegedabagacad'

# set window title
set_window_title

# enable autojump
if [ -f `brew --prefix`/etc/autojump ]; then
    . `brew --prefix`/etc/autojump
fi
