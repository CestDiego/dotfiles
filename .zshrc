# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="duellj"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git mix z zsh-syntax-highlighting history-substring-search)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$PATH:$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export EDITOR='emacsclient -c'

########################################
########### -ALIASES- ##################
########################################

alias zshconfig="emacsclient -t ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zshsrc="source ~/.zshrc"

alias plz='eval sudo "$(fc -nl -1)"'
alias search='ps aux | grep '
alias sudo="sudo "

alias ec="emacsclient -n"
alias ect="emacsclient -t"
alias ecc="emacsclient -nc"

alias sleeptight="sudo shutdown -r now"
alias this="nautilus ."
alias show="google-chrome-stable "
alias ls='ls --color=auto'

alias nethack='telnet nethack.alt.org'
alias kboff='echo "0" | sudo tee -a /sys/devices/platform/asus-nb-wmi/leds/asus::kbd_backlight/brightness > /dev/null'
alias asdf='sudo apt-get update && sudo apt-get dist-upgrade -y'

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
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7
source /usr/local/bin/virtualenvwrapper.sh

########################################
#### -END VIRTUALENVWRAPPER- ###########
########################################
export PATH="$PATH:$HOME/.rvm/bin:$HOME/.node/bin"
export PATH="$PATH:$HOME/.installed/android-studio/sdk/platform-tools:$HOME/.installed/android-studio/sdk/tools:$HOME/.installed/android-studio/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/genymotion/"
export NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript:$HOME/.node/lib/node_modules:$HOME/node_modules

export PATH="$PATH:$HOME/.installed/ndk"

export PATH="$PATH:$HOME/.installed/subuser/bin:$HOME/.cask/bin"
export SBCL_HOME=~/.installed/lisp/sbcl/lib/sbcl
source ~/.rvm/scripts/rvm

export TRAVIS_TOKEN="EeHNkn8V1kKeYi2SqCx1"


#########################################3vim
function sano {
    mplayer -really-quiet "http://translate.google.com/translate_tts?tl=es&q=$1";
}
