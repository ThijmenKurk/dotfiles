rm ~/.tmux.conf
rm ~/.vimrc
rm ~/.zshrc

ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.tmux.conf ~/.tmux.conf
