This repository contains all my VIM's settings (including all plugins).

To do after the GIT CLONE:

.vimrc and .gvimrc are inside .vim/ folder: create a soft link to them in home folder with:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

The temporary and swap files are created inside .tmp folder. This folder has to be created with:

    mkdir ~/.tmp

The plugins are inside bundle's folders. To recover them with:

    git submodule init
    git submodule update

List of installed plugins:

    vimwiki
    nerdtree
    VimOrganizer
    vim-arduino-ino
    vim-sleuth / sleuth
    vim-openscad
    ctrlp.vim
    vim-autotag
    vim-airline-themese
    vim-airline
    tagbar

PS: Thanks to Mr. Drew Neil (and the other FOSS's contributors) for the magic --> http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
