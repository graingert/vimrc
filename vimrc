set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/Vundle.vim'

" My bundles here:
"
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tomasr/molokai'
Bundle 'davidhalter/jedi-vim'
let g:jedi#show_call_signatures = 0
Bundle 'itchyny/lightline.vim'
set laststatus=2
Bundle 'kien/ctrlp.vim'
let g:ctrlp_user_command = {
    \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files'],
        \ 2: ['.hg', 'hg --cwd %s locate -I .'],
        \ },
    \ 'fallback': 'find %s -type f'
    \ }
Bundle 'scrooloose/syntastic'
let g:syntastic_python_checkers=['python', 'flake8', 'pep8', 'pep257', 'py3kwarn', 'frosted',]
let g:syntastic_javascript_checkers = ['eslint', 'jscs']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_aggregate_errors = 1
let g:syntastic_id_checkers = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
Bundle 'scrooloose/nerdcommenter'
Bundle 'saltstack/salt-vim'
Bundle 'scrooloose/nerdtree'
let NERDTreeBookmarksFile=expand("$HOME/.vim-NERDTreeBookmarks")
let NERDTreeShowBookmarks=1
Bundle 'groenewege/vim-less'
Bundle 'hdima/python-syntax'
Plugin 'leafgarland/typescript-vim'
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1
Plugin 'derekwyatt/vim-scala'
Plugin 'Raimondi/delimitMate'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'rking/ag.vim'

call vundle#end()
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
syntax on
set backspace=indent,eol,start
set number

set listchars=tab:>─,trail:·,extends:>,precedes:<
set list

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 colorcolumn=120
autocmd Filetype dosini setlocal colorcolumn=80
autocmd Filetype tex setlocal expandtab tabstop=2 shiftwidth=2 colorcolumn=80 spell spelllang=en_gb
autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType less setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype cucumber setlocal expandtab tabstop=4 shiftwidth=4 colorcolumn=80
set mouse=a
