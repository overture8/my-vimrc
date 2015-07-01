" no vi compatibility
set nocompatible
filetype off

set encoding=utf-8
scriptencoding utf-8
"set number
set showcmd
set smartcase
set nowrap

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'

" plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-endwise'
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-bundler'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'kien/ctrlp.vim'
Plugin 'thoughtbot/pick.vim'
Plugin 'dsawardekar/ember.vim'
Plugin 'chrisbra/csv.vim'
Plugin 'mileszs/ack.vim'
Plugin 'fatih/vim-go'
Plugin 'wting/rust.vim'
Plugin 'lambdatoast/elm.vim'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'leafgarland/typescript-vim'
Plugin 'hlissner/vim-forrestgump'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'rizzatti/dash.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'yegappan/mru'
Plugin 'wellbredgrapefruit/tomdoc.vim'

" colours
Plugin 'jgdavey/vim-railscasts'
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/base16-vim'
Plugin 'jayferd/eco.vim'

set t_Co=256
let base16colorspace=256  " Access colors present in 256 colorspace
set background=dark    " Setting dark mode
:colorscheme gruvbox

" Backup dir
set backupdir=~/.vim/backups/

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
set laststatus=2

" Turn on highlighted search and syntax highlighting
set hlsearch
set incsearch
syntax on

" Set leader to backslash - taken out since defaults to this.
" let mapleader = "\"

" Set up command for NERDTree
nmap ,n :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
map <Space> <Enter>

" Set up command for ctrlp.vim
" nmap ,l :CtrlP<CR>
"let g:ctrlp_working_path_mode = 'cra'
" set wildignore+=*/tmp/*,*/db/migrate/*,*.so,*.swp,*.zip,*/vendor/,*/packages/*,*/.meteor/*,*/bower_components/*,*/node_modules/*

" Pick config
nmap ,l :call PickFile()<CR>

" Make backspace work the way it should
set backspace=2

" Make backspace and cursor keys wrap accordingly"
set whichwrap+=<,>,h,l

" Make searches case-insensitive
set ignorecase

" Make editing .vimrc easier
map <leader>v :sp ~/.vimrc<CR>
map <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" EasyMotion config
nmap f <Plug>(easymotion-s)

" Dash config
nmap <leader>d <Plug>DashSearch

" Generate a tags file in the current directory using Exuberant ctags
map <leader>e :silent :! ctags --recurse --sort=yes;sort tags > tmptags;mv tmptags tags<CR>:exe ":echo 'tags generated'"<CR>

" Ack - Search for word under cursor
noremap <Leader>a :Ack <cword><cr>

" Most recently used files
nmap ,m :MRU<CR>

filetype plugin indent on

vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" Github flavoured markdown
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" set cursorline
":hi CursorLine   cterm=NONE ctermbg=black ctermfg=white guibg=darkred guifg=white
":hi CursorColumn cterm=NONE ctermbg=black ctermfg=white guibg=darkred guifg=white
":nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" Emmet Config
imap hh <C-y>,

" RSpec config
map <Leader>a :call RunAllSpecs()<CR>
map <Leader>aa :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>

" lightline config
" NOTE: Install fonts from here for this to work
" https://github.com/powerline/fonts
" then set terminal to use Source Code Pro font
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
