" Part of this file was inspired in makigas vimrc (@danirod)

set nocompatible "disable Vi compatibility mode
set history=1000 "increase history size
set noswapfile
set nobackup

set autoindent "Always indent
syntax on "enable syntax highlighting
filetype plugin indent on

set undofile "persist undo history between file editing sessions
set undodir=~/.vim/undodir "dir for storing the undo history

set number "show line numbers
set relativenumber "show numbers as relative
set cursorline "cursor line hightlighting
set cursorcolumn "cursor column highlighting
set nowrap "don't wrap long lines
set splitbelow "horizontal split below
set splitright "vertial split right

set laststatus=2 "always show status bar
set showtabline=2 "always show tab bar (for integration with lightline-bufftabline plugin)

set encoding=utf-8
set backspace=indent,eol,start "backspace always work on insert mode
set hidden "allows to switch between buffers withouth saving changes

set fillchars+=vert:\┊ "character used in split window's line
set wildmenu "enhanced menu for autocompletation commands

inoremap {<CR> {<CR>}<Esc>O


" Enable true colors (tmux stuff)
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Shortcuts for switching the buffers
map <C-K> :bnext<CR>
map <C-J> :bprev<CR>

let mapleader=","

" Material theme specific configuration
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'

colorscheme material
