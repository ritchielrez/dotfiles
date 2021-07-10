autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%B%F{42}(%b) '

# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats       '%B%F{#E06C75}(%b%u%c) '
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

setopt PROMPT_SUBST
PROMPT='%F{blue}%~ ${vcs_info_msg_0_}%(?.%B%F{63}❯ .%B%F{#E06C75}❌ % '

