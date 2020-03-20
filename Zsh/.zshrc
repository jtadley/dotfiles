# plugins: zsh-syntax-highlighting, zsh-autosuggestions

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lambda"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

set -o vi

export KEYTIMEOUT=1

function zle-keymap-select() {
	zle reset-prompt
	zle -R
}

zle -N zle-keymap-select

function vi_mode_prompt_info() {
	echo "${${KEYMAP/vicmd/[% NORMAL]%}/(main|viins)/[% INSERT]%}"
}

RPS1='$(vi_mode_prompt_info)'
RPS2=$RPS1

source ~/.custom-commands.sh
source ~/.profile
alias mkdir="/usr/bin/mkdir -pv"
xmodmap $HOME/.Xmodmap
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"
