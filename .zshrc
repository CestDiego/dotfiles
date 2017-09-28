# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z history-substring-search osx zsh-syntax-highlighting)

# User configuration

source $ZSH/oh-my-zsh.sh

source ~/.alias

# get RIDE
#source ~/Downloads/ride-5.1.2-mac64/env.sh

source ~/.profile

######################################################################
######################### Node Version Manager #######################
######################################################################
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# export JAVA_HOME=/Users/dberrocal/Downloads/ride-5.1.2-mac64/OpenJDK-1.7.0_45/Contents/Home

nvm use 8 > /dev/null
######################################################################
######################### Python Environment  ########################
######################################################################

eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

function spt ()
{
    cd ~/Documents/ebay/rctapp/
    nvm use
    rm -rf ~/Documents/ebay/rctapp/{.cache,.beans}
    PORT=8003 SSLPORT=8083 grunt start-server
}

function highline ()
{
    cd ~/Documents/ebay/highline-web/
    nvm use
    yarn run clean
    yarn start
}

alias zk="kill -9 %1"

function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

source "/Users/dberrocal/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
