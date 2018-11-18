node_install_version=10.9.0

echo "Installing nvm ..."
if [ ! -s "$NVM_DIR/nvm.sh" ] ; then
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | zsh
  source "$HOME/.nvm/nvm.sh"
  echo "Installing node $node_install_version ..."
  nvm install "$node_install_version"
  nvm use "$node_install_version"
  nvm alias default node
else
  echo "nvm already installed ..."
fi
