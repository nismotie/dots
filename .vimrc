"Specify a directory for plugins
"plugins 
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround/'
Plug 'jiangmiao/auto-pairs'
Plug 'goerz/jupytext.vim'
Plug 'vim-airline/vim-airline'
Plug 'godlygeek/tabular'
Plug 'jpalardy/vim-slime'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'chrisbra/Colorizer'
Plug 'sainnhe/forest-night'
Plug 'vimwiki/vimwiki'
Plug 'tweekmonster/django-plus.vim'

call plug#end()

"get vimslime to use tmux by default
let g:slime_target = "tmux"

"use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<tab>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction


let g:UltiSnipsExpandTrigger="<S-Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"use F4 for Goyo
nnoremap <F4> :Goyo<CR>

"numbering
set relativenumber number


"nerdtree setup
map <C-n> :NERDTreeToggle<CR>

"space as leader key
let mapleader=" "

"easier movement
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>

"fzf search
map <C-f> <Esc><Esc>:Files!<CR>
map <C-g> <Esc><Esc>:BLines!<CR>
map <C-r> <Esc><Esc>:Rg<CR>


"getting nord to behave
let g:nord_termtrans = 1
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_diff_background = 1

"getting forest night to behave
let g:forest_night_transparent_background = 1

augroup nord-overrides
  autocmd!
  autocmd ColorScheme nord highlight Comment guifg=#7b88a1
augroup END

"vim defaults
set termguicolors
syntax enable
filetype plugin on
set background=dark
colorscheme forest-night
set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab
set cursorline
set showtabline=2
set wildmenu
set autoindent
set breakindent
set incsearch
set laststatus=2
set noshowmode
set nocompatible
set conceallevel=2
set mouse=a

