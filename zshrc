ZSH=/usr/share/oh-my-zsh/
ZSH_CUSTOM=~/.zsh


DISABLE_AUTO_UPDATE="true"

plugins=(
  git
  z
)


ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="015"
POWERLEVEL9K_DIR_HOME_FOREGROUND="015"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="015"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S | %d.%m.%y}"

ZSH_THEME='powerlevel9k/powerlevel9k'

alias vi="vim"

source $ZSH/oh-my-zsh.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
