# set PATH
export PATH=/usr/local/bin:/usr/local/sbin:/Library/Frameworks/Python.framework/Versions/2.6/bin:/Users/phil/Code/android-sdk-mac_86/tools:$PATH

# set MANPATH
export MANPATH=/usr/local/man:$MANPATH

# customize prompt appearance
export PS1="\[\e[31;1m\][\u@`/usr/sbin/scutil --get ComputerName`: \W] \[\e[0m\]"

# bash history control
export HISTCONTROL=erasedups
export HISTFILESIZE=10000

# set system aliases
alias ls='ls -AFG'
alias diff='diff -u'
alias apache2ctl='sudo /opt/local/apache2/bin/apachectl'
alias mysqlstart='sudo launchctl load /Library/LaunchDaemons/org.macports.mysql5.plist'
alias mysqlstop='sudo launchctl unload /Library/LaunchDaemons/org.macports.mysql5.plist'
alias e='mvim'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'

# useful functions
topten() { # 10 most common recent commands
    history | awk '{print $2}' | sort | uniq -c | sort -rn | grep -v 'topten' | head -10
}
myip() {
    curl http://ip.appspot.com
}
calc() {
    echo "$1" | bc
}

# editors
export EDITOR=vim
export VISUAL=vim

# grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='32;1;4' # green, bold, underline

# ls
export LSCOLORS='dxcxcxdxbxegedabagacad'
