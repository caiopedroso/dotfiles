set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'michalliu/jsoncodecs.vim'
Plugin 'michalliu/jsruntime.vim'
Plugin 'michalliu/sourcebeautify.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'stephpy/vim-yaml'
Plugin 'sheerun/vim-polyglot'
Plugin 'preservim/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ##### Basic options  {{{
" Enable syntax highlighting
syntax on
" Display incomplete commands.
set showcmd
" Display the mode you're in.
set showmode
" Intuitive backspacing.
set backspace=indent,eol,start
" Handle multiple buffers better.
set hidden
" Enhanced command line completion.
set wildmenu
" Complete files like a shell.
set wildmode=list:longest
" Case-insensitive searching.
set ignorecase
" But case-sensitive if expression contains a capital letter.
set smartcase
" Show line numbers.
set number
" Show cursor position.
set ruler
" Highlight matches as you type.
set incsearch
" Don't highlight matches.
set nohlsearch
" Turn off line wrapping.
set nowrap    
" Show 3 lines of context around the cursor.
set scrolloff=3
" Set the terminal's title
set title
" No beeping and blinks.
set visualbell
set belloff=all
" Don't make a backup before overwriting a file.
set nobackup
" And again.
set nowritebackup
" Keep swap files in one location
set directory=$HOME/.vim/tmp//,.
" Allows the mouse to be used
set mouse=a
" Automatically reads changed files
set autoread

" ##### Markdown  {{{
" Sets markdown syntax for *.md files.
autocmd BufRead,BufNewFile *.md set filetype=markdown
" Wrap markdown files.
autocmd BufRead,BufNewFile *.md set wrap
autocmd BufEnter *.md colorscheme badwolf
" Set textwidth to 80 columns
autocmd FileType md set textwidth=80
" }}}

" ##### JavaScript  {{{
" Sets javascript syntax for *.json files.
autocmd BufRead,BufNewFile *.json set filetype=javascript
" Sets html syntax for *.ejs files.
autocmd BufRead,BufNewFile *.ejs set filetype=html
" }}}

" ##### Airline  {{{
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'

" ##### Python {{{
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4
" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100
" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix
" }}}

" ##### CtrlP  {{{
" Works not only in ancestor directories of my working directory.
let g:ctrlp_working_path_mode = 'a'
" Custom ignores
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store|_build\|__pycache__\|venv\'
" }}}

" ##### YAML {{{
autocmd BufRead,BufNewFile *.yaml,*.yml set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" }}}
