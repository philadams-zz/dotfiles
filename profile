# set PATH
export PATH=/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH

# set MANPATH
export MANPATH=/usr/local/man:/opt/local/man:$MANPATH

# customize prompt appearance
export PS1="\[\e[37;1m\][\u@`/usr/sbin/scutil --get ComputerName`: \W] \[\e[0m\]"

# bash history control
export HISTCONTROL=erasedups
export HISTFILESIZE=10000

# set system aliases
alias ls='ls -AF'
alias diff='diff -u'
alias apache2ctl='sudo /opt/local/apache2/bin/apachectl'
alias mysqlstart='sudo launchctl load /Library/LaunchDaemons/org.macports.mysql5.plist'
alias mysqlstop='sudo launchctl unload /Library/LaunchDaemons/org.macports.mysql5.plist'
alias e='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'

# useful functions
topten() { # 10 most common recent commands
    history | awk '{print $2}' | sort | uniq -c | sort -rn | grep -v 'topten' | head -10
}

# editors
export EDITOR=vim
export VISUAL=vim

# grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='32;1;4' # green, bold, underline
