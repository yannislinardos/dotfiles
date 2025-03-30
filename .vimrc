" Use Vim settings, rather than Vi settings
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim' " Let Vundle manage Vundle, required
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on " Required

" UI Enhancements
set number
set relativenumber
set cursorline
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
set autoindent
set wildmenu

" Tab and indent settings
set softtabstop=2
set shiftwidth=4
set tabstop=4

" Syntax and filetype support
syntax on
filetype indent on

" netrw config
let g:netrw_browse_split = 4
let g:netrw_liststyle = 3

" Leader and mappings
let mapleader = "\<Space>"
inoremap jj <Esc>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Cursor shape depending on mode (works well with tmux)
if &term == "screen" || &term == "screen-256color"
  let &t_SI = "\ePtmux;\e\e[5 q\e\\"   " Blinking bar in Insert mode
  let &t_EI = "\ePtmux;\e\e[2 q\e\\"   " Block cursor in Normal mode
else
  let &t_SI = "\e[5 q"   " Blinking bar in Insert mode
  let &t_EI = "\e[2 q"   " Block cursor in Normal mode
endif

" Highlighting for visual mode
hi Visual ctermbg=darkblue ctermfg=white guibg=darkblue guifg=NONE

" Color scheme
colorscheme desert
