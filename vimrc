set nocompatible      " we're running vim, not vi!
syntax on             " enable syntax highlighting
filetype on           " enable filetype detection
filetype indent on    " enable filetype-specific indenting
filetype plugin on    " enable filetype-specific plugins
highlight linenr term=bold ctermfg=darkgrey guifg=darkgrey
set number
set nocompatible               " be improved
filetype off                   " required!
" set shiftwidth=2

filetype plugin indent on     " required!

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set background=dark

highlight clear SignColumn
set backspace=2 " make backspace work like most other apps


set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

let mapleader=","

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'Lokaltog/vim-powerline'
" Plugin 'Solarized'
Plugin 'fugitive.vim'
Plugin 'Conque-Shell'
Plugin 'FuzzyFinder'
Plugin 'L9'
Plugin 'The-NERD-tree'
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'The-NERD-Commenter'
"Plugin 'conque-term'
Plugin 'vim-coffee-script'
Plugin 'AutoClose'
Plugin 'tpope/vim-rails'
"Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlp.vim'
Plugin 'slim-template/vim-slim.git'
Plugin 'mileszs/ack.vim'
Plugin 'RltvNmbr.vim'
Plugin 'Valloric/YouCompleteMe.git'
call vundle#end()            " required
filetype plugin indent on    " required

set hlsearch

if has("gui_running")
  set guioptions=egmrt
  colorscheme smyck
endif

"Bundle 'git://git.wincent.com/command-t.git'

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set background=dark
"colorscheme solarized

highlight clear SignColumn
set backupdir=~/.backup,.,/tmp
set noswapfile
autocmd BufWritePre * :%s/\s\+$//e


let g:browser = '/usr/bin/open -a "/Applications/Google Chrome.app" '
" Open the Ruby ApiDock page for the word under cursor, in a new Firefox tab
function! OpenRubyDoc(keyword)
  let url = 'http://apidock.com/ruby/'.a:keyword
  exec '!'.g:browser.' '.url.' &'
endfunction
noremap RB :call OpenRubyDoc(expand('<cword>'))<CR>

"let g:nerdtree_tabs_open_on_console_startup=0
set guifont=Menlo\ Regular:h16

com Cdg cd ~/code/bigbinary/gumroad/web


let g:NERDTreeHijackNetrw = 1
au VimEnter NERD_tree_1 enew | execute 'NERDTree '.argv()[0]
let g:ackprg = "ag --vimgrep"

set wildmenu
set relativenumber
"":RltvNmbr
nmap <D-F> :Ack<space>
imap jj <Esc>
noremap <Leader>b :Ack <cword><cr>
nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>
