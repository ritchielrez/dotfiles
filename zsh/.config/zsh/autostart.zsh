cat ~/.config/zsh/todo.txt
source ~/.config/zsh/todo.zsh
cd ~/Documents/dev/cpp/GTKTut2
# wpg -s /home/ritux/Documents/repos/wallpapers/maller/awake.jpg ; clear

# Set wgtk color scheme in zsh
(cat ~/.cache/wal/sequences &)

# Autostart tmux

# Automatically start TMUX, if it's not set

if [[ ! -v ZSH_TMUX_AUTOSTART ]]; then

    export ZSH_TMUX_AUTOSTART=true

fi
