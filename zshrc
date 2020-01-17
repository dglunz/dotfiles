# Colorscheme
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

# Default editor
export EDITOR="nvim"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# https://github.com/zplug/zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "lib/theme-and-appearance", from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh
zplug "lib/completion", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "lib/directories", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh
zplug 'dracula/zsh', as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# Git info
# https://github.com/olivierverdier/zsh-git-prompt
ZSH_GIT_PROMPT="$HOME/zsh-git-prompt/zshrc.sh"
[ -s $ZSH_GIT_PROMPT ] && source $ZSH_GIT_PROMPT

PROMPT='$ '
RPROMPT='%(4~|%2~|%~)$(git_super_status)'

# https://github.com/rbenv/rbenv
eval "$(rbenv init -)"

# User configuration
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/Users/dannyglunz/Library/Python/3.7/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/lib/node_modules/:$PATH"
export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

# Go config
export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"

# Larger history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

# Setup zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^o' autosuggest-accept

# Load aliases
for file in ~/.{aliases,functions}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# NPM paths
NPM_PACKAGES=/Users/dglunz/.npm-packages
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
