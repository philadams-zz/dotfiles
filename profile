# set PATH
export PATH=/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/local/sbin:$PATH

# set MANPATH
export MANPATH=/usr/local/man:$MANPATH

# other env vars
export HOST=`/usr/sbin/scutil --get ComputerName`

# customize prompt appearance
export PS1="\[\e[32;1m\][\u@$HOST: \W] \[\e[0m\]"

# aliases
alias json='python -m json.tool'

# useful functions
topten() { # 10 most common recent commands
    history | awk '{print $2}' | sort | uniq -c | sort -rn | grep -v 'topten' | head -10
}

# editors
export EDITOR=vim
export VISUAL=vim
