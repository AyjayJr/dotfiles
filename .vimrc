" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Load plugins here 
call plug#begin()
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]
call plug#end()

" Temp disable youcompleteme
let g:loaded_youcompleteme=1

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Set leader key
let mapleader = ","

" NERDTree mappings
nnoremap <C-n> :NERDTreeToggle<CR>

" Security
set modelines=0

" Show line numbers
set number
set relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
" set wrap
" set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:>-
" set listchars=tab:▸ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> 

" Set line cursor for insert and block everywhere else
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Color scheme (terminal)
set t_Co=256
set background=dark
colorscheme gruvbox

" Character limit
set colorcolumn=100
" set textwidth=100

highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
