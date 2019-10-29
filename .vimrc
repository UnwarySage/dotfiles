"ignore standards attempting to emulate vi
set nocompatible

"A good resource https://dougblack.io/words/a-good-vimrc.html

" Plugins and colors schemes
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.

" parinfer plugin, and automatic recompilation
" note this requires a rust toolchain to be installed
Plug 'eraserhd/parinfer-rust', {'do':
        \  'cargo build --release'}

" Sane defaults package
Plug 'tpope/vim-sensible'

" GIT commands
Plug 'tpope/vim-fugitive'

" Clojure REPL
Plug 'tpope/vim-fireplace'

" Clojure Static dev tools
Plug 'guns/vim-clojure-static'

"General clojure commands
Plug 'tpope/vim-salve'

" Rainbow parens
Plug 'kien/rainbow_parentheses.vim'

" Gui -ish tweaks

" powerline style plugin
 Plug 'itchyny/lightline.vim'

" git line status information
Plug 'airblade/vim-gitgutter'

" Colorschemes
Plug 'junegunn/seoul256.vim'
Plug 'sjl/badwolf'
Plug 'arcticicestudio/nord-vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" General Configuration

" Visual setup

"Turn on colorscheme
colorscheme nord 

"Turn on nord colorscheme for lightline
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

"Enable Syntax processing
syntax enable

"Turn on all plugins for detectable filetypes
filetype plugin indent on

"Turn on line numbers
set number

" Turn on cursor line indication
set cursorline

