set encoding=utf-8

" Don't try to be vi compatible
set nocompatible
set noswapfile

set mouse=a

" colors
let base16colorspace=256  " Access colors present in 256 colors     pace
set termguicolors

" editor
syntax enable
set number

" https://sw.kovidgoyal.net/kitty/faq.html#id3
let &t_ut=''

" For plugins to load correctly
filetype plugin indent on

set synmaxcol=150
set wrap
set wrapmargin=0

 " Security
set modelines=0
set directory^=$HOME/.vim/tmp//

" Show file stats
set ruler
" no visualbell
set t_vb=


" Whitespace
set textwidth=99
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set smarttab
set noexpandtab

" Cursor motion
set scrolloff=20
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs runtime! macros/matchit.vim
"
" Allow hidden buffers
set hidden
"
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

set backupcopy=yes

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes
"
" Rendering
set ttyfast

" Last line
" uncomment for native vim
set showcmd
set showmode
" Status bar
set laststatus=2


set hlsearch
set incsearch

set ignorecase
set smartcase
set showmatch

" Visualize tabs and newlines
set listchars=tab:\·\ ,trail:~,precedes:←,extends:→,eol:¬,nbsp:·
if has('patch-7.4.710')
	set listchars+=space:·
endif

set list
set previewheight=25

set colorcolumn=120
set splitright
set splitbelow

" highlight Comment cterm=italic
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

let mapleader = ","
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip " MacOSX/Linux

set laststatus=2
" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=
set statusline=\ %f%m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\ %([%l,%v][%p%%]\ %)



au BufRead,BufNewFile *.jsx,*.js set filetype=javascript.jsx
au BufRead,BufNewFile *.md setlocal synmaxcol=80 sw=2 ts=2 nolist expandtab
au FileType md setlocal nolist
au FileType rust,elm setlocal sw=4 ts=4 expandtab
au FileType nim setlocal sw=2 ts=2 expandtab
au FileType graphql setlocal noexpandtab
"
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

nnoremap <silent> <leader>s :update<cr>:e!<cr><c-i>
nnoremap ; :
nnoremap j gj
nnoremap k gk
nnoremap <C-e> 10<C-e>
nnoremap <C-y> 10<C-y>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Leader>t :ter<cr>
tnoremap <C-k> <C-w>k
tnoremap <C-j> <C-w>j
tnoremap <C-h> <C-w>h
tnoremap <C-l> <C-w>l
" Searching
nnoremap / /\v
vnoremap / /\v

map <leader><space> :let @/=''<cr> " clear search

"Close every window in the current tabview but the current one
nnoremap <Leader>o <C-w>o
" remap arrow keys
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>
nnoremap <Up> 10<C-Y>
nnoremap <Down> 10<C-E>

"vi copy cut & paste
nmap <C-c> "+yaw
vmap <C-c> "+y
vmap <C-x> "+d
vmap <C-x> "+d

" MACOS
" ∆ === Alt + J
" ˚ === Alt + K
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv

"Close every window in the current tabview but the current one
nnoremap <Leader>o <C-w>o
" close preview window
nnoremap <Space>z <C-w>z
nnoremap <Space>j :bprev<CR>
nnoremap <Space>k :bnext<CR>
nnoremap <Space>q :bp\|bd #<CR>
nnoremap <Leader>q :bp\|bd #<CR>:q<CR>
nnoremap <Space><Space> :b#<CR>

nnoremap <leader>r :e!<cr>

