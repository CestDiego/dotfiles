# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="duellj"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git mix z zsh-syntax-highlighting history-substring-search)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$PATH:$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

export TERM="screen-256color"
# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

export EDITOR='emacsclient -c'

########################################
########### -ALIASES- ##################
########################################

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias zshconfig="emacsclient -t ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zshsrc="source ~/.zshrc"

alias plz='eval sudo "$(fc -nl -1)"'
alias search='ps aux | grep '
alias sudo="sudo "

alias ec="emacsclient -n $@ || (emacs && emacsclient -n $@)"
alias ect="emacsclient -t $@ || (emacs && emacsclient -t $@)"
alias ecc="emacsclient -nc"

alias sleeptight="sudo shutdown -r now"
alias this="nautilus ."
alias show="google-chrome-stable "
alias ls='ls --color=auto'

alias nethack='telnet nethack.alt.org'
alias kboff='echo "0" | sudo tee -a /sys/devices/platform/asus-nb-wmi/leds/asus::kbd_backlight/brightness > /dev/null'
alias asdf='sudo apt-get update && sudo apt-get upgrade -y'

##### SSH SESSIONS!! YEAAAH
alias hackspace='ssh core-beja'
alias gmat='ssh gmat'

##### Alias for Computing Canada SHARCNET servers!
alias requin='ssh -Y -i ~/.ssh/id_rsa diego@requin.sharcnet.ca'
alias saw='ssh -Y -oStrictHostKeyChecking=no -i ~/.ssh/id_rsa diego@saw.sharcnet.ca'
alias orca='ssh -Y -i ~/.ssh/id_rsa diego@orca.sharcnet.ca'
alias bramble='ssh -Y -i ~/.ssh/id_rsa diego@bramble.sharcnet.ca'
alias kraken='ssh -Y -i ~/.ssh/id_rsa diego@kraken.sharcnet.ca'
alias scinet='ssh -l diego login.scinet.utoronto.ca'
alias wobbie='ssh -Y -i ~/.ssh/id_rsa diego@wobbie.sharcnet.ca'

ur_setup() {
    eval `/home/io/.ureka/ur_setup -sh $*`
}
ur_forget() {
    eval `/home/io/.ureka/ur_forget -sh $*`
}
########################################
######### -END ALIASES- ################
########################################



########################################
###### -VIRTUALENVWRAPPER- #############
########################################
export WORKON_HOME=$HOME/.virtualenvs
# export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7
export VIRTUALENVWRAPPER_PYTHON=$HOME/Enthought/Canopy_64bit/User/bin/python2.7
# source /usr/local/bin/virtualenvwrapper.sh
source ~/Enthought/Canopy_64bit/User/bin/virtualenvwrapper.sh

# source ~/.rvm/scripts/rvm

export TRAVIS_TOKEN="EeHNkn8V1kKeYi2SqCx1"


#########################################3vim
function sano {
    mplayer -really-quiet "http://translate.google.com/translate_tts?tl=es&q=$1";
}

function sl(){
    ((RANDOM%42)) && command sl || ls;
}


#########################################
######### BSPWM ENV VARIABLES ###########
#########################################

PANEL_FIFO=/tmp/panel-fifo
PANEL_HEIGHT=24
PANEL_FONT_FAMILY="-adobe-Source Code Pro-bold-normal-normal-*-16-*-*-*-m-0-fontset-auto1"
export PANEL_FIFO PANEL_HEIGHT PANEL_FONT_FAMILY


# Added by Canopy installer on 2015-02-27
# VIRTUAL_ENV_DISABLE_PROMPT can be set to '' to make bashprompt show that Canopy is active, otherwise 1
VIRTUAL_ENV_DISABLE_PROMPT=1 source /home/io/Enthought/Canopy_64bit/User/bin/activate
