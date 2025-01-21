# Enable vi mode for keybindings in Zsh
bindkey -v

# Set the timeout for multi-key combinations (e.g., `ESC` sequences) to 1 ms
export KEYTIMEOUT=1

# Define functions to dynamically update the right prompt (RPS1) based on the current keymap
function zle-line-init zle-keymap-select {
    # Define the prompt text for NORMAL mode (vicmd keymap)
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"

    # Dynamically set RPS1 to show the NORMAL mode prompt when in vicmd keymap
    # Remove RPS1 for other keymaps (viins, main)
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"

    # Refresh the prompt to reflect changes immediately
    zle reset-prompt
}

# Register the functions to Zsh's line editor (zle) system
# zle-line-init is called at the beginning of a line-editing session
zle -N zle-line-init
# zle-keymap-select is called whenever the keymap changes (e.g., switching vi modes)
zle -N zle-keymap-select

# Load the Zsh module for editing the current command line in an external editor
autoload edit-command-line
# Register the edit-command-line function with Zsh's line editor
zle -N edit-command-line

# Bind `v` in vicmd (NORMAL mode) to open the current command in the editor
bindkey -M vicmd v edit-command-line

# Bind Ctrl+S in vicmd (NORMAL mode) to perform a backward incremental history search
bindkey -M vicmd '^s' history-incremental-search-backward

# Bind Ctrl+S in viins (INSERT mode) to perform a backward incremental history search
bindkey -M viins '^s' history-incremental-search-backward
