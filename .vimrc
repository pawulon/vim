" turn on line numbering
set number

" turn on utf-8 encoding
set encoding=utf-8

" use windows clipboard
set clipboard=unnamed

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

" set space key as a leader key
let mapleader=" "

" Enable folding with the spacebar
nnoremap <space> za


" split navigations - allows to move to othe file by ctrl + h, j, k, l
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" use typical backspace behavior
set backspace=indent,eol,start

" File extenstion specific options

" Python

" set automatic word wrapping to 79 to meet pep-8 requirement
au BufNewFile,BufRead *.py
    \ set textwidth=79

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
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

" Plugin for auto-completion 
Bundle 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Plugin for checking code syntax
Plugin 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Plugin 'nvie/vim-flake8'

let python_highlight_all=1
syntax on
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
