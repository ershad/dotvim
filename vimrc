set nocompatible      " we're running vim, not vi!
syntax on             " enable syntax highlighting
filetype on           " enable filetype detection
filetype indent on    " enable filetype-specific indenting
filetype plugin on    " enable filetype-specific plugins
highlight linenr term=bold cterm=none ctermfg=darkgrey ctermbg=none gui=none guifg=darkgrey guibg=none
set number
set nocompatible               " be improved
filetype off                   " required!
set shiftwidth=2
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
" Bundle 'Solarized'
Bundle 'fugitive.vim'
"Bundle 'Conque-Shell'
Bundle 'FuzzyFinder'
Bundle 'L9'
Bundle 'The-NERD-tree'
Bundle 'conque-term'
Bundle 'vim-coffee-script'
Bundle 'ack.vim'
Bundle 'AutoClose'
Bundle 'airblade/vim-gitgutter'

if has("gui_running")
    set guioptions=egmrt
endif

"Bundle 'git://git.wincent.com/command-t.git'


filetype plugin indent on     " required!

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set background=dark
"colorscheme solarized

highlight clear SignColumn
