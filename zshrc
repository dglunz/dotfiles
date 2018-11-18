PROMPT='$ '

# Colorscheme
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

# Default editor
export EDITOR="nvim"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Git info
# https://github.com/olivierverdier/zsh-git-prompt
ZSH_GIT_PROMPT="$HOME/zsh-git-prompt/zshrc.sh"
CUSTOM_GIT="$HOME/dotfiles/scripts/custom_git.zsh"

[ -s $ZSH_GIT_PROMPT ] && source $ZSH_GIT_PROMPT
[ -s $CUSTOM_GIT ] && source $CUSTOM_GIT

ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_SEPARATOR=" "
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[red]%}%{●%G%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[blue]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[blue]%}◒"

# https://github.com/rbenv/rbenv
eval "$(rbenv init -)"

# User configuration
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/lib/node_modules/:$PATH"
export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

# Go config
export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"

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
