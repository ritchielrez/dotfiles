export PATH="$HOME/local/nvim/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY

source $(which shml)

source ~/.config/zsh/aliases.zsh

# zsh-autosuggestions plugin
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set oh-my-posh prompt
eval "$(oh-my-posh --init --shell zsh --config /home/ritux/.poshthemes/slimfat.omp.json
)"

source ~/.config/zsh/autostart.zsh


