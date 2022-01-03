# Check for homebrew and install if needed
echo "Installing homebrew ..."

which -s brew
if [[ $? != 0 ]] ; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed ..."
fi

brew update

# Install zsh
brew install zsh
brew install zplug
brew install zsh-autosuggestions

# Neovim
brew install neovim

# Tmux
brew install reattach-to-user-namespace
brew install tmux
brew install tmuxinator
brew install urlview

# Ruby
brew install rbenv

# Install other useful binaries
brew install ack
brew install go
brew install python

# Redis
brew install redis
brew services start redis

# Postgres
brew install postgresql
brew services start postgresql

# Heroku
brew tap heroku/brew
brew install heroku

# Browser
brew install --cask google-chrome
brew install --cask firefox

# Chat
brew install --cask zoom
brew install --cask slack

# Media
brew install --cask spotify
brew install cmus

# Mac OS Enhancements
brew install --cask spectacle

# Fonts
brew tap homebrew/cask-fonts
brew install --cask font-inconsolata

# Dev tools
brew install --cask postico
brew install --cask ngrok

brew cleanup
