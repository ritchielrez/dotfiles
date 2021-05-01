export PATH="$HOME/local/nvim/bin:$PATH"

SAVEHIST=10
HISTFILE=~/.zsh_history

source ~/.config/zsh/aliases.zsh

# zsh-autosuggestions plugin
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set oh-my-posh prompt
eval "$(oh-my-posh --init --shell zsh --config /home/ritux/.poshthemes/slimfat.omp.json
)"

source ~/.config/zsh/autostart.zsh


