### Default config ###

source  $HOME/.config/zsh/zsh-omz.zsh
source  $HOME/.config/zsh/zsh-aliases.zsh
source  $HOME/.config/zsh/zsh-config.zsh
source  $HOME/.config/zsh/zsh-functions.zsh
source  $HOME/.config/zsh/zsh-fzf.zsh

### Personal config starts here ###
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
alias ytf="yt-dlp -F"
alias yth="yt-dlp -f 22"
alias ytm="yt-dlp -f 135+140"
alias i="doas xbps-install -Sy"
alias syf="cd /home/zod/fucken_syncthing_dir/"
alias steam="flatpak run com.valvesoftware.Steam"
alias bottle="flatpak run com.usebottles.bottles"
alias untar="tar -xvf"
alias newsboat='newsboat -u ~/Downloads/fuckinrss.opml'
alias rq='surf https://quran.com/page/$((RANDOM %600 + 0))'
alias "awk '!a[$0]++'"
alias kiwix='flatpak run org.kiwix.desktop'
alias downloads='cd /home/zod/Downloads/'
### start up
plugins+=(zsh-vi-mode)
bindkey -v
export BUN_INSTALL="$HOME/.bun"
export EDITOR=vim
export VISUAL=vim
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/home/zod/.local/bin:$PATH"
export WECHALLUSER="zeyad_elkholy"
export WECHALLTOKEN="402E9-98D99-7E760-607AB-B33D8-33CBF"
export JAVA_HOME=/usr/lib/jvm/java-8u99_1-openjdk
cat /home/zod/ascii_me | lolcat
export PATH="$PATH:/home/zod/src/flutter/bin"
shuf -n 1 ~/study/English\ Portfolio/vocabsBank.txt
