" turn on line numbering
set number

" enable unix style end of line formatting
set fileformat=unix

" indent when moving to the next line while writing code
set autoindent

" set tab to be 4 spaces wide
set tabstop=4
set softtabstop=4

" when indenting with '>>', use 4 spaces width
set shiftwidth=4

" on pressing tab, insert 4 spaces
set expandtab

" enable syntax highlighting
syntax enable

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za


" split navigations - allows to move to othe file by ctrl + h, j, k, l
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" File extenstion specific options

" Python

" set automatic word wrapping to 79 to meet pep-8 requirement
au BufNewFile,BufRead *.py
    \ set textwidth=79

"""""""""""""""""'
" Vundle - extension manager for vim

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugin that enables better pythojn indentation"
Plugin 'vim-scripts/indentpython.vim'

" Plugin for better folding
Plugin 'tmhedberg/SimpylFold'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
