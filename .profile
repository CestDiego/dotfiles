export DEFAULT_USER="dberrocal"
export USER_NAME="Diego Berrocal"

########################## Using NVM ##########################
export NVM_DIR="$HOME/.nvm"

########################## Using PyEnv ##########################
export PYENV_ROOT="$HOME/.pyenv"
if [ -d "$PYENV_ROOT" ] ; then
    export PATH="$PYENV_ROOT/bin:$PATH"
fi

# Add ~/bin to PATH
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

# eBay things
export JAVA_HOME="/Users/dberrocal/Documents/Programs/ride-5.2.3-mac64/OracleJDK-1.7.0_45/Contents/Home"

export PATH="$PATH:/Users/dberrocal/Documents/Programs/ride-5.2.3-mac64/apache-maven-3.1.1/bin/"
export PATH="$PATH:/Users/dberrocal/Documents/Programs/ride-5.2.3-mac64/apache-tomcat-7.0.64_4/bin/"

export GTAGSLABEL=pygments
