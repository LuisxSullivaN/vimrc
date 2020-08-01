" Part of this file was inspired in makigas vimrc (@danirod)

set nocompatible "disable Vi compatibility mode
set history=1000 "increase history size
set noswapfile
set nobackup

set autoindent "always indent
" default editing settings, specific settings are in ftplugin folder
syntax on "enable syntax highlighting
filetype plugin indent on

"Persist undo history between file editing sessions
set undofile
set undodir=~/.vim/undodir

set number "show line numbers
set relativenumber "show numbers as relative
set cursorline "cursor line hightlighting
set cursorcolumn "cursor column highlighting
set nowrap "don't wrap long lines
set splitbelow "horizontal split below
set splitright "vertial split right

set laststatus=2 "always show status bar

set encoding=utf-8
set backspace=indent,eol,start "backspace always work on insert mode
set hidden "allow buffers to be hidden and switch between them without saving changes

set fillchars+=vert:\┊ "character used in split window's line
set wildmenu "enhanced menu for autocompletation commands

inoremap {<CR> {<CR>}<Esc>O

colorscheme nord

" Enable true colors (tmux stuff)
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Shortcuts for switching the buffers
map <C-N> :bnext<CR>
map <C-P> :bprev<CR>

let mapleader=","

" Nord theme specific configuration. Doesn't work in pack/plugin/theme/nord.vim
let g:nord_cursor_line_number_background = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
