# plugins: zsh-syntax-highlighting, zsh-autosuggestions

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lambda"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# vi mode
bindkey -v

export KEYTIMEOUT=1

function zle-keymap-select() {
	case $KEYMAP in
		vicmd) echo -ne '\e[1 q';; # block cursor
		viins|main) echo -ne '\e[5 q';; # less visible cursor
	esac

	zle reset-prompt
	zle -R
}

function zle-line-init {
	case $KEYMAP in
		vicmd) echo -ne '\e[1 q';; # block cursor
		viins|main) echo -ne '\e[5 q';; # less visible cursor
	esac
}

function zle-line-finish {
	echo -ne '\e[1 q'
}

zle -N zle-keymap-select
zle -N zle-line-init
zle -N zle-line-finish


source ~/.profile
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

# opam configuration
test -r /home/draag/.opam/opam-init/init.zsh && . /home/draag/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
