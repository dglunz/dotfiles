# Check for homebrew and install if needed
echo "Installing homebrew ..."

which -s brew
if [[ $? != 0 ]] ; then
  yes | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew already installed ..."
fi

brew update

# Install zsh
brew install zsh
brew install zplug
brew install zsh-autosuggestions

# Neovim
pip3 install neovim

# Tmux
brew install reattach-to-user-namespace
brew install tmux
brew install tmuxinator
brew install urlview

# Ruby
brew install rbenv

# Install other useful binaries.
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

# Misc
brew install cmus

brew cleanup
