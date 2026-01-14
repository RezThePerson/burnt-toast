eval "$(starship init zsh)" # Starship
eval "$(pay-respects zsh)"

autoload -Uz compinit # Enable completion system
compinit

##### HISTORY #####

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=10000

setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify

# Autosuggestions
source ~/.zsh/plugins/zsh-autosuggestions.zsh
source ~/.zsh/plugins/zsh-history-substring-search.zsh
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias flex="fastfetch"
alias rb="sudo nixos-rebuild switch --flake ~/Burnt-Toast/nixos#nixos"
alias c="qalc"

alias l="eza -1 --icons"
alias la="eza -1 --icons -a"
alias ll="eza -1 --icons -l"
alias lt="eza -1 --tree --level=2 --icons"

fastfetch
