## zsh-config.zsh ##

HISTFILE="$ZDOTDIR/.zsh_history"

HISTSIZE=5000
SAVEHIST=5000

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

export EDITOR="vim"
export VISUAL=nano
export BROWSER="firefox"
export BAT_THEME=Dracula
export TERMINAL=konsole

# Dracula Universal theme for man-pages

export MANPAGER="/usr/bin/less -s -M +Gg"

export LESS_TERMCAP_mb=$'\e[1;31m'      # begin bold
export LESS_TERMCAP_md=$'\e[1;34m'      # begin blink
export LESS_TERMCAP_so=$'\e[01;45;37m'  # begin reverse video
export LESS_TERMCAP_us=$'\e[01;36m'     # begin underline
export LESS_TERMCAP_me=$'\e[0m'         # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'         # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'         # reset underline
export GROFF_NO_SGR=1                   # for konsole

# ------------------------------
# exa - Color Scheme Definitions
# ------------------------------
export EXA_COLORS="\
uu=36:\
gu=37:\
sn=32:\
sb=32:\
da=34:\
ur=34:\
uw=35:\
ux=36:\
ue=36:\
gr=34:\
gw=35:\
gx=36:\
tr=34:\
tw=35:\
tx=36:"

### See https://zsh.sourceforge.io/Doc/Release/Options.html

## Changing directories

setopt autocd
setopt autopushd
setopt cdablevars
setopt chasedots
setopt chaselinks
setopt pushdignoredups
setopt pushdsilent
setopt pushdtohome

# Completion, expansion and globbing
setopt automenu
setopt autolist
setopt braceccl
setopt menucomplete
setopt listpacked
setopt globdots
setopt extendedglob
setopt markdirs
setopt nomatch
setopt numericglobsort
setopt rc_quotes
setopt rec_exact
setopt autoremoveslash

## History

setopt appendhistory
setopt histexpiredupsfirst
setopt histfindnodups
setopt histignorealldups
setopt histignoredups
setopt histignorespace
setopt histnostore
setopt histreduceblanks
setopt histsavenodups
setopt histverify
setopt incappendhistory
setopt sharehistory

## Input/Output

setopt correct
setopt interactivecomments

##  Scripts and Functions

setopt multios
setopt listpacked
setopt promptsubst

## Zle

setopt combiningchars

#### Unset ####

unsetopt beep
unsetopt checkjobs
unsetopt hup
unsetopt bgnice
unsetopt clobber
unsetopt extendedhistory
unsetopt rmstar_silent

# Save and reload history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

command -v starship > /dev/null && eval "$(starship init zsh)"

export LS_COLORS="$(vivid generate dracula)"

# Zsh Completion with LS Colors
zstyle ':completion:*:default' list-colors "$LS_COLORS"
