## Base XDG setup
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="$HOME/.cache/runtime"

# move zsh config out of ~
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export USER_HOME="/Users/$USER"
export USER_BIN="$XDG_DATA_HOME/bin"

export LANG=en_US.UTF-8

export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER='nvim +Man!'

# set JAVA_HOME
export JAVA_HOME=$(/usr/libexec/java_home -v 11)

### Android setup
export ANDROID_HOME=$USER_HOME/Library/Android/sdk
# Setup AndroidStudio vars - GRADLE
#PATH=$PATH:"/Applications/Android Studio.app/Contents/gradle/gradle-4.6/bin

# Android build tools v.35.0
ANDROID_BUILD_TOOLS_VERSION=35.0.0


## Path setup
typeset -U PATH path
path=(
  $USER_BIN
  $path[@]
  $ANDROID_HOME/tools
  $ANDROID_HOME/tools/bin
  $ANDROID_HOME/platform-tools
  $ANDROID_HOME/build-tools/$ANDROID_BUILD_TOOLS_VERSION/
)


# -------------------------------------------------
## Helper functions
cfg_dirs=(
  $XDG_CONFIG_HOME
  $XDG_CACHE_HOME
  $XDG_DATA_HOME
  $XDG_STATE_HOME 
  $XDG_RUNTIME_DIR
  $USER_BIN
) 
function xdg_doctor {
  # Crete dirs if not exist
  for dir in $cfg_dirs[@]; do
    if [ ! -d "$dir" ]; then
      echo "$dir doesn't exist!"
    fi
  done
}

function xdg_create_base_dirs {
  # Crete dirs if not exist
  for dir in $cfg_dirs[@]; do
    if [ ! -d "$dir" ]; then
      echo "$dir doesn't exist!"
      mkdir -p "$dir"
      chmod 0700 "$dir"
      echo "$dir created"
    fi
  done
}

function xdg_runtime_cleanup {
  # Check old files in the XDG_RUNTIME_DIR
  # Delete old file, but left 'tmux' related files
  if [ -d "$XDG_RUNTIME_DIR" ]; then
    find "$XDG_RUNTIME_DIR" -type f -mtime +7 ! -name "tmux-*" -exec rm -f {} \; 2>/dev/null &
    find "$XDG_RUNTIME_DIR" -type d -empty -mtime +7 -exec rmdir {} \; 2>/dev/null &
  fi
}

