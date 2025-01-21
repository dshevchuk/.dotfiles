ZSH_CFG_DIR="$XDG_CONFIG_HOME/zsh"
# Aliases
alias e="$EDITOR"
alias vim9="/opt/homebrew/bin/vim"

alias vimrc="$EDITOR ~/.vimrc"
alias zshrc="$EDITOR $ZSH_CFG_DIR/.zshrc"
alias tmuxrc="$EDITOR ~/.tmux.conf"
alias nvimrc="$EDITOR ~/.config/nvim"
alias tellyrc="$EDITOR ~/dev/telly/.zshrc"

alias open-configs="$EDITOR ~/.config/"
alias open-fzf-completion="$EDITOR /opt/homebrew/opt/fzf/shell/completion.zsh"
alias open-fzf-key-bindings="$EDITOR /opt/homebrew/opt/fzf/shell/key-bindings.zsh"
alias open-aliases="$EDITOR $ZSH_CFG_DIR/aliases.zsh"
alias open-zle="$EDITOR $ZSH_CFG_DIR/zle.zsh"

alias git-aliases="$EDITOR ~/.oh-my-zsh/plugins/git/git.plugin.zsh"
alias reload-zsh-conf="source $ZSH_CFG_DIR/.zshrc"

alias switch_to_java_8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)"
alias switch_to_java_11="export JAVA_HOME=$(/usr/libexec/java_home -v 11)"
alias switch_to_java_17="export JAVA_HOME=$(/usr/libexec/java_home -v 17)"


alias nk='NVIM_APPNAME=nvim-kickstart nvim' # Kickstart


alias c="clear"
alias godev="cd ~/dev"
alias gosdk-android="cd ~/Library/Android/sdk/"
alias l="colorls -l --sd"
alias ll="colorls -lA --sd"
alias mux="tmuxinator"

alias py="python3"
alias inv='nvim $(fzf --preview="bat --color=always {}")'

alias adb-restart="adb kill-server && adb start-server"
alias adb-screenshot="adb exec-out screencap -p > $(date +"%Y-%m-%d_%H-%M-%S").png"
alias avd="$USER_HOME/Library/Android/sdk/emulator/emulator"
