[ -f "$HOME/.config/env" ] && source "$HOME/.config/env"

source $SCRIPTS_HOME/.custom-commands.sh
alias mkdir="/usr/bin/mkdir -pv"
alias wget='alias --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
xmodmap $HOME/.Xmodmap
