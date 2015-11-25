" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" MODS FOR PATHOGEN.VIM
execute pathogen#infect()

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" Customized syntax files per extension
filetype on
au BufNewFile,BufRead *.tjp,*.tji set filetype=tjp
au BufNewFile,BufRead *.ino set filetype=arduino

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif
"Indentation
set expandtab           " Convert tabs into spaces
set shiftwidth=8        " For indentation size
set softtabstop=8       " For tabs' size

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"Show line number with relative number
set relativenumber
set number

"VimWiki
set nocompatible
filetype plugin on
syntax on
let wiki_1 = {}
let wiki_1.path = '~/Nicola_ZIPPO/Backup/My\ Codes/VimWiki/VimWiki_Sources/'
let wiki_1.path_html = '~/Nicola_ZIPPO/Backup/My\ Codes/VimWiki/HTML/'
let wiki_1.template_path = '~/Nicola_ZIPPO/Backup/My\ Codes/VimWiki/VimWiki_templates/'
let g:vimwiki_list = [wiki_1]

"NERDtree
map <F2> :NERDTreeToggle<CR>

"Reducing temporary and backup files spreading around folders
set backupdir=~/.tmp
set directory=~/.tmp

"highlights text over the 80 column limit
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"Select last pasted text with gb. Note: gv selects the last yanked text
"Useful to change indentation after pasted some code (select with gb and
"change with </>
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'

