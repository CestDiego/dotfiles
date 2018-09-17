export DEFAULT_USER="dberrocal"
export USER_NAME="Diego Berrocal"

########################## Using NVM ##########################
export NVM_DIR="$HOME/.nvm"
export MY_NODE_VERSION=8.11.4

########################## Using PyEnv ##########################
export PYENV_ROOT="$HOME/.pyenv"
export MY_PYTHON_VERSION=2.7.6

if [ -d "$PYENV_ROOT" ] ; then
    export PATH="$PYENV_ROOT/bin:$PATH"
fi

# Add ~/bin to PATH
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
