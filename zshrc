# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. ~/.oh-my-zsh/themes/
ZSH_THEME="terminalparty"

# Disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Plugins (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git rails)

# User configuration
export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias ohmyzsh="vim ~/.oh-my-zsh"

# Git Aliases
alias gs="git status"
alias gd="git diff --patience --ignore-space-change"
alias gcb="git checkout -b"
alias gb="git branch"
alias ga="git add"
alias gh="git hist"
alias be="bundle exec"
alias gm="git checkout master"
alias gcm="git commit -m"

# Open according to suffix
alias -s rb=vim
alias -s go=vim
alias -s html=open

# Random Aliases
alias notes="vim ~/Desktop/notes.txt"
alias ind="cd ~/Documents/codes/circle"
alias fs="foreman start"
alias v="vim"
alias fucking="sudo"

source $ZSH/oh-my-zsh.sh

# Setup zsh-autosuggestions
source ~/.zsh-autosuggestions/autosuggestions.zsh

# Enable autosuggestions automatically
zle-line-init() {
    zle autosuggest-start
}

zle -N zle-line-init

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle

