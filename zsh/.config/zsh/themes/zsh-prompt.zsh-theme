# autoload -Uz vcs_info
# precmd() { vcs_info }

# zstyle ':vcs_info:git:*' formats '%B%F{42}(%b) '

# Enable checking for (un)staged changes, enabling use of %u and %c
# zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
# zstyle ':vcs_info:*' unstagedstr ' *'
# zstyle ':vcs_info:*' stagedstr ' +'
# Set the format of the Git information for vcs_info
# zstyle ':vcs_info:git:*' formats       '%B%F{#E06C75}(%b%u%c) '
# zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

# if [ "%u" = "" ]; then
#    zstyle ':vcs_info:git:*' formats '%B%F{42}(%b%u%c) '
# fi

setopt PROMPT_SUBST
PROMPT='%F{#B16286}'
PROMPT+='%F{#98971A}%n %F{#FE8019}in %F{blue}%~%F{#346E75}$GITSTATUS_PROMPT%F{#B16286} '
PROMPT+='%(?.%B%F{#B16286}$ .%B%F{#FB4934}$ % '

# ❯ 

