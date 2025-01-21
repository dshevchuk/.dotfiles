echo "XDG zshrc loaded"

# Path to your oh-my-zsh installation.
export ZSH="$XDG_CONFIG_HOME/oh-my-zsh"

# Open man page in nvim
export MANPAGER='nvim +Man!'

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
plugins=(
  git zsh-autosuggestions zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ZLE config
source ~/.config/zsh/zle.zsh

# Personal dev configs
source ~/dev/.zshrc

# Homebrew setup
eval "$(/opt/homebrew/bin/brew shellenv)"

# Aliases
source ~/.config/zsh/aliases.zsh

## FZF
source ~/.config/fzf/fzf.zsh

## Bat
source ~/.config/bat/bat.zsh

## Starship promt
eval "$(starship init zsh)"

