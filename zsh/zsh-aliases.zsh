##Aliases ##

## XBPS ##
alias s='xbps-query -Rs'
alias install='doas xbps-install -S'
alias update='doas xbps-install -Su'
alias clean='doas xbps-remove -O'
alias remove='doas xbps-remove -R'
alias reconf='doas xbps-reconfigure -f'
alias installed='xbps-query -m'
alias rc='doas rm /var/cache/xbps/*'
alias orphans='xbps-query --list-orphans'

## Void Linux ##
alias services='doas sv status /var/service/*'

## Filesystem ##
alias del='rm -rf'
alias co='cd ~/.config/'
alias lo='cd ~/.local/'
alias themes='cd /usr/share/themes'
alias hthemes='cd $HOME/.themes'
alias lsthemes='cd $HOME/.local/share/themes'
alias fonts='cd /usr/share/fonts'
alias hfonts='cd $HOME/.fonts'
alias lsfonts='cd $HOME/.local/share/fonts'
alias icons='cd /usr/share/icons'
alias hicons='cd $HOME/.icons'
alias lsicons='cd $HOME/.local/share/icons'
alias co='cd ~/.config/'
alias lo='cd ~/.local/'
alias z='cd ~/.config/zsh/'
alias home='cd ~'

## ls ##
alias ls='exa -a --icons --group-directories-first'
alias ll='ls -lh --git'
alias la='ll -g --octal-permissions'
alias tree='ll --tree --level=2'

#Fast upwards navigation
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'

#Safe operations with files
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

## Shorthands ##
alias gpa='find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull'
alias trash='doas rm -rf ~/.local/share/Trash/*'
alias cc='doas sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"'
alias mywifi='lspci | grep Wireless'
alias path='echo -e ${PATH//:/\\n}'
alias lsb='lsblk --fs --perms | grep -v \/snap'
alias t='topgrade'
alias bottom='btm'
alias del='rm -rf'
alias q='exit'
alias batt='upower -i /org/freedesktop/UPower/devices/battery_BAT0|grep --color=never -E "state|to\ full|percentage"'
alias ez='kate $HOME/.config/zsh/.zshrc'
alias al='$EDITOR ~/.config/zsh/zsh-aliases.zsh'
alias rl='exec $SHELL -l'
alias wget='wget -c'
alias userlist='cut -d: -f1 /etc/passwd'
alias who='whoami'
alias ping='ping -c 5'
alias fastping='ping -c 100 -s.2'
alias grep='grep --color=auto'
alias dmesg='dmesg --color'
alias mkdir='mkdir -pv'
alias clear-ram="doas sh -c 'sync; echo 3 > /proc/sys/vm/drop_caches'"
alias root='doas su -'
alias mountedinfo='df -hT'
alias get='curl --continue-at - --location --progress-bar --remote-name --remote-time'
alias free='free -m'
alias ipexternal='wget -qO- ifconfig.me/ip && echo'
alias reboot='doas /sbin/reboot'
alias rebootsafe='doas shutdown -r now'
alias rebootforce='doas shutdown -r -n now'
alias poweroff='doas /sbin/poweroff'
alias halt='doas /sbin/halt'
alias shutdown='doas /sbin/shutdown'
alias h='history | fzf'

## Inxi ##
alias mac='inxi -zv8'
alias weather='inxi -wxxx'
alias machine='inxi -Fxxxrza'

## Bat ##
alias cat='bat'
alias batlt='bat --list-themes'
alias batcb='bat cache --build'

## Git ##
alias clone='git clone --depth 1 --recurse-submodules'

#Check free space on disks
alias df='df -h'

## Fonts ##
alias ft='fc-cache -f -v'
alias sf='fc-list : family spacing | grep -i'
## my Aliases ##
