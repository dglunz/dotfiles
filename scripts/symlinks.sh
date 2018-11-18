# Dotfiles directory and backup
dir=~/dotfiles
olddir=~/dotfiles_old

# list of files/folders to symlink in homedir
files="bashrc vimrc vim zshrc tmux.conf aliases tmuxinator"

# Create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "Done"

# Change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# Move any existing dotfiles in homedir to dotfiles_old directory, then create
# symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
