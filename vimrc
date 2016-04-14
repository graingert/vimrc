set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" My bundles here:
"
" original repos on GitHub
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
Plugin 'tomasr/molokai'
Plugin 'davidhalter/jedi-vim'
let g:jedi#show_call_signatures = 0
Plugin 'itchyny/lightline.vim'
set laststatus=2
Plugin 'kien/ctrlp.vim'
let g:ctrlp_user_command = {
    \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files'],
        \ 2: ['.hg', 'hg --cwd %s locate -I .'],
        \ },
    \ 'fallback': 'find %s -type f'
    \ }
Plugin 'scrooloose/syntastic'
let g:syntastic_python_checkers=['python', 'flake8', 'pep8', 'pep257', 'py3kwarn', 'frosted',]
let g:syntastic_javascript_checkers = ['eslint', 'jscs']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_aggregate_errors = 1
let g:syntastic_id_checkers = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
Plugin 'scrooloose/nerdcommenter'
Plugin 'saltstack/salt-vim'
Plugin 'scrooloose/nerdtree'
let NERDTreeBookmarksFile=expand("$HOME/.vim-NERDTreeBookmarks")
let NERDTreeShowBookmarks=1
Plugin 'groenewege/vim-less'
Plugin 'hdima/python-syntax'
Plugin 'leafgarland/typescript-vim'
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1
Plugin 'derekwyatt/vim-scala'
Plugin 'Raimondi/delimitMate'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'othree/yajs.vim'
Plugin 'othree/es.next.syntax.vim'

" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'rking/ag.vim'

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
" NOTE: comments after Plugin commands are not allowed.
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
