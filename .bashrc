# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

alias ls="ls --color=auto -h"
alias ll='ls -alF'
alias la='ls -lAh'
alias l='ls -CF'

alias vim="nvim"

alias mkdir="mkdir -pv"

# Confirm before overwrite
alias cp="cp -i"
alias rm="rm -i"
alias mv="mv -i"

# Git
alias dot="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

shopt -s autocd
shopt -s cdspell        # autocorrects cd misspellings
shopt -s expand_aliases # expand aliases
shopt -s nocaseglob
bind 'set completion-ignore-case on'

up() {
  local d=""
  local limit="$1"

  # Default to limit of 1
  if [ -z "$limit" ] || [ "$limit" -le 0 ]; then
    limit=1
  fi

  for ((i = 1; i <= limit; i++)); do
    d="../$d"
  done

  # perform cd. Show error if cd fails
  if ! cd "$d"; then
    echo "Couldn't go up $limit dirs."
  fi
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

eval "$(fzf --bash)"

eval "$(starship init bash)"
