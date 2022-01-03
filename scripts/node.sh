node_install_version=latest

echo "Installing nvm ..."
if [ ! -s "$NVM_DIR/nvm.sh" ] ; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh
  source "$HOME/.nvm/nvm.sh"
  echo "Installing node $node_install_version ..."
  nvm install "$node_install_version"
  nvm use "$node_install_version"
  nvm alias default node
else
  echo "nvm already installed ..."
fi
