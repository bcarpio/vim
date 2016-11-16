set nocompatible
filetype off
" Load Vindle
" Type :PluginInstall (Noob)
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'scrooloose/syntastic'
Plugin 'rodjek/vim-puppet'
Bundle 'chase/vim-ansible-yaml'
Bundle 'https://github.com/m-kat/aws-vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "vadv/vim-chef"
Plugin 'elzr/vim-json'
Plugin 'https://github.com/vim-scripts/groovy.vim.git'
call vundle#end()

" Enable Syntax Highlight
syntax on
" Enable Indentation
filetype plugin indent on

" Setup NerdTree Stuff
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd BufWinEnter * NERDTreeMirror
let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Setup Python Stuff
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
set encoding=utf-8

" Setup Syntastic Stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
