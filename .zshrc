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

source ~/.profile

######################################################################
######################### Node Version Manager #######################
######################################################################
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

nvm use $MY_NODE_VERSION > /dev/null
######################################################################
######################### Python Environment  ########################
######################################################################

eval "$(pyenv init -)"

######################################################################
######################### Ruby Environment  ########################
######################################################################

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function spt ()
{
    cd ~/Documents/eBay/rctapp/
    nvm use
    rm -rf ~/Documents/ebay/rctapp/{.cache,.beans}
    PORT=8003 SSLPORT=8083 grunt start-server
}

function server-ghfe()
{
    if [ -e /tmp/highline.pid ]
    then
        kill -9 `cat /tmp/highline.pid`
	echo "Killed Zombie HighLine"
    fi

    if [ -e /tmp/ghfe.pid ]
    then
        kill -9 `cat /tmp/ghfe.pid`
	echo "Killed Zombie GHFE"
    fi

    sleep 2

    cd ~/Documents/eBay/
    (
        cd highline-web;
        yarn clean &> /dev/null;
        if [ "$1" == "--debug" ];
        then
        echo "Starting HighLine with debugger"
        node --inspect=9223 index.js &> /tmp/highline.log &
        else
        echo "Starting HighLine"
        node index.js &> /tmp/highline.log &
        fi
        echo $! > /tmp/highline.pid
    )

    (
        cd GlobalHeaderFrontEnd;
        yarn clean &> /dev/null;
        if [ "$1" == "--debug" ];
        then
        echo "Starting GHFE with debugger"
        PORT=8083 SSLPORT=8444 node --inspect=9224 index.js &> /tmp/ghfe.log &
        else
        echo " Starting GHFE"
        PORT=8083 SSLPORT=8444 node index.js &> /tmp/ghfe.log &
        fi
        echo $! > /tmp/ghfe.pid
    )
}

function highline ()
{
    cd ~/Documents/eBay/highline-web/
    nvm use
    yarn run clean
    yarn start
}

alias zk="kill -9 %1"

function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
