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
alias xi="doas xbps-install -Sy"
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
set -o vi
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/home/zod/.local/bin:$PATH"
export WECHALLUSER="zeyad_elkholy"
export WECHALLTOKEN="402E9-98D99-7E760-607AB-B33D8-33CBF"
cat /home/zod/ascii_me | lolcat
