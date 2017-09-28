export DEFAULT_USER="dberrocal"
export USER_NAME="Diego Berrocal"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

########################## Using NVM ##########################
export NVM_DIR="$HOME/.nvm"

########################## Using PyEnv ##########################
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"


# Add ~/bin to PATH
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

# eBay things
export JAVA_HOME="/Users/dberrocal/Documents/Programs/ride-5.1.4-mac64/OracleJDK-1.7.0_45/Contents/Home"

export PATH="$PATH:/Users/dberrocal/Documents/Programs/ride-5.1.4-mac64/apache-maven-3.1.1/bin/"
export PATH="$PATH:/Users/dberrocal/Documents/Programs/ride-5.1.4-mac64/apache-tomcat-7.0.64_4/bin/"

# Android Sdk and PATH for binaries
export ANDROID_HOME=~/Library/Android/sdk
export PATH="$PATH:/Users/dberrocal/Library/Android/sdk/platform-tools/"

export GTAGSLABEL=pygments

export GOPATH=$HOME/.go-workspace
export PATH=$PATH:/usr/local/opt/go/libexec/bin:$GOPATH/bin
