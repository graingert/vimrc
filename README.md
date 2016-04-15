Install
=======

hub clone VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
hub clone graingert/vimrc ~/projects/vimrc
ln -s ~/projects/vimrc/vimrc ~/.vimrc
vim +PluginInstall +qall
