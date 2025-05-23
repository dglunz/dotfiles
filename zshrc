# Colorscheme
# source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

# Default editor
export EDITOR="nvim"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# https://github.com/zplug/zplug
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "lib/theme-and-appearance", from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh
zplug "lib/completion", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "lib/directories", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# Prompt config - https://github.com/olivierverdier/zsh-git-prompt
ZSH_GIT_PROMPT="$HOME/zsh-git-prompt/zshrc.sh"
[ -s $ZSH_GIT_PROMPT ] && source $ZSH_GIT_PROMPT
PROMPT='$ '
RPROMPT='%(4~|%2~|%~)$(git_super_status)'

# User configuration
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="$HOME/Library/Python/3.11/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rvm/bin:$PATH"
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
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
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
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# TMUX
export TMUX_PLUGIN_MANAGER_PATH="$HOME/.tmux/plugins"

# Brew path
eval "$(/opt/homebrew/bin/brew shellenv)"

# Dev (jw tooling)
source /opt/dev/dev.sh
source /opt/secrets/current/dev_env_exports.sh
export PATH="/opt/homebrew/opt/gnupg@2.2/bin:$PATH"
export PATH="${HOME}/.pyenv/shims:${PATH}"
