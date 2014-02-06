set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tomasr/molokai'
Bundle 'davidhalter/jedi-vim'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
let g:syntastic_python_checkers=['python', 'pep8', 'pyflakes', 'pylint']
let g:syntastic_aggregate_errors = 1
let g:syntastic_id_checkers = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
Bundle 'scrooloose/nerdcommenter'
Bundle 'saltstack/salt-vim'
Bundle 'scrooloose/nerdtree'
let NERDTreeBookmarksFile=expand("$HOME/.vim-NERDTreeBookmarks")
let NERDTreeShowBookmarks=1
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'groenewege/vim-less'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
"

set t_Co=256
colorscheme molokai
set number

set listchars=tab:>─,trail:·,extends:>,precedes:<
set list

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 colorcolumn=80
autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType less setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd Filetype javascript setlocal expandtab tabstop=4 shiftwidth=4
set mouse=a
