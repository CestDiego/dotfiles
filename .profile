export DEFAULT_USER="dberrocal"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

########################## Using NVM ##########################
export NVM_DIR="$HOME/.nvm"

########################## Using PyEnv ##########################
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Eclipse
export ECLIPSE_HOME=/Users/dberrocal/Downloads/sts-bundle/STS.app/Contents/Eclipse/

# Add ~/bin to PATH
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

PANEL_FIFO=/tmp/panel-fifo
PANEL_HEIGHT=20
PANEL_FONT_FAMILY="Anonymous Pro:18"
PANEL_ICON_FAMILY="Font Awesome:18"
export PANEL_FIFO PANEL_HEIGHT PANEL_FONT_FAMILY
export PKG_CONFIG_PATH=/usr/local/Cellar/zlib/1.2.8/lib/pkgconfig:/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig

export JAVA_HOME="/Users/dberrocal/Programs/ride-5.1.2-mac64/OracleJDK-1.7.0_45/Contents/Home/"

export PATH="$PATH:/Users/dberrocal/Programs/ride-5.2.1-mac64/apache-maven-3.1.1/bin/"
export PATH="$PATH:/Users/dberrocal/Programs/ride-5.2.1-mac64/apache-tomcat-7.0.64_4/bin/"
export GTAGSLABEL=pygments

export GOPATH=$HOME/.go-workspace
export PATH=$PATH:/usr/local/opt/go/libexec/bin:$GOPATH/bin

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
