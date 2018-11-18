# Create directories
mkdir -p "$HOME/.config/nvim/"
ln -sfv "$HOME/.vimrc" "$HOME/.config/nvim/init.vim"

# Allow CTRL-H mapping to work in neovim
# https://github.com/neovim/neovim/wiki/Troubleshooting#my-ctrl-h-mapping-doesnt-work
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti
