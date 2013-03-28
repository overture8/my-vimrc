" no vi compatibility
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" plugins
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-pathogen'
Bundle 'tpope/vim-endwise'
Bundle 'Townk/vim-autoclose'
Bundle 'tpope/vim-bundler'
"Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/increment.vim--Natter'
Bundle 'kien/ctrlp.vim'
Bundle 'jgdavey/vim-railscasts'
Bundle 'chrisbra/csv.vim'
Bundle 'vim-scripts/AutoComplPop'
Bundle 'vim-scripts/grep.vim'
Bundle 'mileszs/ack.vim'
Bundle 'SirVer/ultisnips'

" colours
Bundle 'jgdavey/vim-railscasts'
Bundle 'jayferd/eco.vim'

set t_Co=256
:colorscheme railscasts

" Backup dir
set backupdir=~/vim_swps

" Where swp files are banished to...
set directory=/tmp

" Show position in file
set ruler

" Use 2 spaces for tabs, turn on automatic indenting
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent
set laststatus=0

" Turn on highlighted search and syntax highlighting
set hlsearch
set incsearch
syntax on

" Set leader to backslash - taken out since defaults to this.
" let mapleader = "\"

" Set up command for NERDTree
map <leader>n :NERDTree<CR>

" Set up command for ctrlp.vim
map l :CtrlPMixed<CR>
"let g:ctrlp_working_path_mode = 'cra'
set wildignore+=*/tmp/*,*/db/migrate/*,*.so,*.swp,*.zip

" Make backspace work the way it should
set backspace=2

" Make backspace and cursor keys wrap accordingly"
set whichwrap+=<,>,h,l

" Make searches case-insensitive
set ignorecase

" Make editing .vimrc easier
map <leader>v :sp ~/.vimrc<CR>
map <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Generate a tags file in the current directory using Exuberant ctags
map <leader>e :silent :! ctags --recurse --sort=yes;sort tags > tmptags;mv tmptags tags<CR>:exe ":echo 'tags generated'"<CR>

" Ack - Search for word under cursor
noremap <Leader>a :Ack <cword><cr>

filetype plugin indent on

" set cursorline
":hi CursorLine   cterm=NONE ctermbg=black ctermfg=white guibg=darkred guifg=white
":hi CursorColumn cterm=NONE ctermbg=black ctermfg=white guibg=darkred guifg=white
":nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
