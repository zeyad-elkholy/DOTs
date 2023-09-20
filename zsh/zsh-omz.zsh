# Path to your oh-my-zsh installation.

export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode disabled  # disable automatic updates

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor regexp root line)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080"

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $HOME/.oh-my-zsh/custom/plugins/dracula.zsh-syntax-highlighting/dracula.zsh-syntax-highlighting.sh

plugins=(fzf-tab
git
git-extras
git-extra-commands
zsh-autopair
zsh-autosuggestions
zsh-syntax-highlighting
history-substring-search)

autoload -Uz compinit
compinit

autoload -U bashcompinit
bashcompinit

source $ZSH/oh-my-zsh.sh
