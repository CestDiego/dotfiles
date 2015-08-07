# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="bullet-train"
ZSH_THEME="jonathan"
# ZSH_THEME="afowler"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(git z nix history-substring-search)

# User configuration

export PATH="$HOME/Projects/nand2tetris/tools:$HOME/.local/bin:$HOME/bin:/var/setuid-wrappers:$HOME/.nix-profile/bin:$HOME/.nix-profile/sbin:$HOME/.nix-profile/lib/kde4/libexec:/nix/var/nix/profiles/default/bin:/nix/var/nix/profiles/default/sbin:/nix/var/nix/profiles/default/lib/kde4/libexec:/run/current-system/sw/bin:/run/current-system/sw/sbin:/run/current-system/sw/lib/kde4/libexec"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export TERM="xterm-256color"

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

########################################
########### -ALIASES- ##################
########################################
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias zshconfig="emacsclient -t ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zshsrc="source ~/.zshrc"

alias plz='eval sudo "$(fc -nl -1)"'
alias search='ps aux | grep '
alias sudo="sudo "

alias ec="emacsclient -n "
alias ect="emacsclient -t "
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
alias viz8='ssh -Y -i ~/.ssh/id_rsa diego@viz8-uwo.sharcnet.ca'

alias burn='sudo -i nixos-rebuild switch'
alias buzz='pushblast "sudo -i nixos-rebuild switch"'
alias nrep='nix-env -qaP --description | grep '
alias lrep='ls -lha | grep '

ur_setup() {
    eval `/home/io/.ureka/ur_setup -sh $*`
}
ur_forget() {
    eval `/home/io/.ureka/ur_forget -sh $*`
}


export BULLETTRAIN_DIR_SHOW=false
export BULLETTRAIN_PROMPT_CHAR="ƛ"
# export BULLETTRAIN_STATUS_SHOW=true
# # GSL
# LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/envhpc/gsl/1.9/lib
# export LD_LIBRARY_PATH
export DEBFULLNAME="Diego Berrocal"
export DEBEMAIL="cestdiego@gmail.com"

if [[ $ZSH_THEME == "jonathan" ]]; then

PROMPT='$PR_SET_CHARSET$PR_STITLE${(e)PR_TITLEBAR}\
$PR_CYAN$PR_ULCORNER$PR_HBAR$PR_GREY(\
$PR_GREEN%$PR_PWDLEN<...<%~%<<\
$PR_GREY)`rvm_prompt_info || rbenv_prompt_info`$PR_CYAN$PR_HBAR$PR_HBAR${(e)PR_FILLBAR}$PR_HBAR$PR_GREY(\
$PR_CYAN%(!.%SROOT%s.%n)$PR_GREY@$PR_GREEN%m:%l\
$PR_GREY)$PR_CYAN$PR_HBAR$PR_URCORNER\

$PR_CYAN$PR_LLCORNER$PR_BLUE$PR_HBAR(\
$PR_YELLOW%D{%H:%M:%S}\
$PR_LIGHT_BLUE%{$reset_color%}`git_prompt_info``git_prompt_status`$PR_BLUE)$PR_CYAN$PR_HBAR\
$PR_HBAR\
>$PR_NO_COLOUR '
fi
