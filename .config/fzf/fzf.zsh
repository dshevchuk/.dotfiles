## Setup fzf
# ---------
if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
fi
# You could do 
#    eval <(fzf --zsh)
# and it will evel contetn of completion and bindings files
# Auto-completion
source "/opt/homebrew/opt/fzf/shell/completion.zsh"
# Key bindings
source "/opt/homebrew/opt/fzf/shell/key-bindings.zsh"
## End setup fzf

