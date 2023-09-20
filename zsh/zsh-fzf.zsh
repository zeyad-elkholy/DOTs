###  fzf ###

if type fzf > /dev/null; then
  [ -f /usr/share/fzf-git-bindings/functions.sh ] && source /usr/share/fzf-git-bindings/functions.sh
  [ -f /usr/share/fzf-git-bindings/key-binding.zsh ] && source /usr/share/fzf-git-bindings/key-binding.zsh
  [ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
  [ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh

export FZF_DEFAULT_OPTS="-m --ansi --layout=reverse --info=inline --color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008' --prompt=' ' --pointer='' --marker='✓' --no-mouse --preview-window=:hidden"

export FZF_DEFAULT_COMMAND='fd . --type f --hidden --follow --no-ignore --color always'

fi
