.vimrc and .gvimrc are inside .vim/ folder: create a soft link to them in home folder with:

	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc


PS: Thanks to Mr. Drew Neil for the magic --> http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
