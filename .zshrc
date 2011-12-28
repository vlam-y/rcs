HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
zstyle :compinstall filename '/home/USERNAME/.zshrc'

export PROMPT=$'\n%{\e[0;36m%}\U250C\U2500%n@%m\U2500\U2500[%/]\U2500\U2500(%*)\n\U2514\U2500\U2500\U2500%{\e[0;36m%}%{\e[0m%}[%y zsh]%# '

autoload -Uz compinit
compinit

alias ls="ls --color=auto"
#execute custom configuration
export VLAM=/vlam
export CUSTOM_SCRIPT_PATH=$VLAM/workspace/scripts/
. $CUSTOM_SCRIPT_PATH/custom_env.sh
export XDG_CONFIG_HOME="/home/USERNAME/.config/"
