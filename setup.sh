source ./scripts/symlinks.sh
source ./scripts/brew.sh
source ./scripts/zsh.sh
source ./scripts/vim.sh
source ./scripts/node.sh
source ./scripts/ruby.sh

git submodule update --init

echo "Sourcing .zshrc ..."
source "$HOME/.zshrc"
echo "Installation complete!"

