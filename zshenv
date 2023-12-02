# Environmental Variables
export BROWSER='firefox'
export TERMINAL='st'
export EDITOR='nvim'
export VISUAL='nvim'
export READER='zathura'
export PAGER='bat'
export BAT_THEME='gruvbox-light'

# Path variables
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.config/emacs/bin:$PATH

# Simplicity
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.local/.cache"

# Cleanup
export XAUTHORITY=/tmp/Xauthority
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export FFMPEG_DATADIR="$XDG_CONFIG_HOME"/ffmpeg 
export gnome_user_dir="$HOME/.local/share/applications/gnome/"
export HISTFILE="$XDG_CACHE_HOME"/zsh/history

# export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export ZDOTDIR=$HOME/.config/zsh

# Other program settings:
export QT_QPA_PLATFORMTHEME="gtk2"      # Have QT use gtk2 theme.
export MOZ_USE_XINPUT2="1"              # Mozilla smooth scrolling/touchpads.
export _JAVA_AWT_WM_NONREPARENTING=1    # Fix for Java applications in dwm
