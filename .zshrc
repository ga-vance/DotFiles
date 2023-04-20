setopt NO_CASE_GLOB
setopt AUTO_CD
setopt CORRECT
setopt CORRECT_ALL

# Enable colors and change prompt:
autoload -U colors && colors

# auto/tab complete:
autoload -Uz compinit && compinit -u
zstyle ':completion*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.


source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Shopt for bash
#shopt -s autocd
#shopt -s cdspell # autocorrects cd misspellings
#shopt -s expand_aliases # expand aliases

# Case insensitive completion for zsh
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 

alias vim="nvim"
alias python="python3"
alias pip="pip3"

# Create directories recursively
alias mkdir="mkdir -pv"

# Listing options
alias ls="ls -h --color=auto"
alias la="ls -lAh --color=auto"

# Confirm before overwriting files
alias cp="cp -i"
alias rm="rm -i"
alias mv="mv -i"

# Colorize grep
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

# Will allow movement up directory by a specified number of directories. ie up 2 moves up 2 levels
up () {
  local d=""
  local limit="$1"

  # Default to limit of 1
  if [ -z "$limit" ] || [ "$limit" -le 0 ]; then
    limit=1
  fi

  for ((i=1;i<=limit;i++)); do
    d="../$d"
  done

  # perform cd. Show error if cd fails
  if ! cd "$d"; then
    echo "Couldn't go up $limit dirs.";
  fi
}

[ -f "/Users/gregory/.ghcup/env" ] && source "/Users/gregory/.ghcup/env" # ghcup-env
