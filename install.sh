rm ~/.tmux.conf
rm ~/.vimrc
rm ~/.zshrc

ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.tmux.conf ~/.tmux.conf

mkdir -p ~/.ssh
ln -s $(pwd)/.ssh/authorized_keys ~/.ssh/authorized_keys
