# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. ~/.oh-my-zsh/themes/
ZSH_THEME="terminalparty"
PROMPT='$ '
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

# Disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Plugins (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git rails rbenv)

# User configuration
eval "$(rbenv init -)"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/lib/node_modules/:$PATH"
export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

# Go config
export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"

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
alias gbd="git branch | grep -v 'master' | xargs git branch -D"
alias gpo="git push origin"
alias gpl="git pull origin master"
alias dply="git push heroku master && heroku run rake db:migrate && heroku restart"

# Random Aliases
alias mo="cd ~/Documents/codes/momakase"
alias fh="cd ~/Documents/codes/realty"
alias up="cd ~/Documents/codes/upknown"
alias notes="vim ~/.notes.txt"
alias todo="vim ~/.todo.txt"
alias dot="cd ~/dotfiles"
alias fs="foreman start"
alias v="gvim"
alias fucking="sudo"
alias noise="~/zero-noise/noise.sh"
curlp() {
  curl -X POST -H "Content-Type: application/json" -d "@./tmp/$1.json" "http://localhost:3000/$2"
}
curlx() {
  curl -X POST -H "Content-Type: text/xml; charset=utf-8" -d "@./tmp/$1.xml" "http://localhost:3000/$2"
}
# Keys stored in ENV Vars $PANA_AGENT
curla() {
  curl -X $1 -H "Authorization: Bearer $3" "http://localhost:3000/$2"
}

# Current workflow
alias pas="cd ~/Documents/codes/pana/sabre-soap"
alias pag="cd ~/Documents/codes/pana/pana-agent"
alias paw="cd ~/Documents/codes/pana/pana-web"
alias pap="cd ~/Documents/codes/pana/pana-api"
alias pad="cd ~/Documents/codes/pana/pana-docs"
alias docs="open file:///Users/dannyglunz/Documents/codes/theme-marketing/docs/index.html"

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

NPM_PACKAGES=/Users/dglunz/.npm-packages
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
