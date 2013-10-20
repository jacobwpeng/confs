set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'scrooloose/nerdtree'

filetype plugin indent on     " required!

syntax on
autocmd BufNewFile,BufReadPost *.cpp,*.cc,*.hpp,*.h set filetype=cpp
autocmd BufNewFile,BufReadPost CMakeLists.txt set filetype=cmake
"colorscheme molokai 
colorscheme jellybeans
"set background=dark
language en_US.utf8
set nocompatible
set term=color_xterm
set t_Co=256
set nu
set ignorecase
set autoread
set ruler
set hlsearch

set noerrorbells
set novisualbell
set t_vb=
set tm=500
set ts=4
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set expandtab
set autoindent 
set cindent

"set fdm=indent
"set foldlevelstart=99
set dir=~/.vimswp
set modeline
set ls=2
set statusline=%*\ %<%F%*[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
hi StatusLine term=reverse ctermbg=5 ctermfg=0
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
  au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif

let mapleader = ","
let g:mapleader = ","

nmap <leader>; :tabp<cr>
nmap <leader>' :tabn<cr>
nmap <leader>. za
imap <Tab> <C-N>
inoremap <c-s> <Esc>:update<CR>a
noremap <c-s> :update<CR>
inoremap <c-q> <Esc>:quit<CR>a
noremap <c-q> :quit<CR>
nnoremap <CR> :noh<CR><CR>
set pastetoggle=<leader>v
set autochdir

"iab #i #include

"NERDTree
let NERDTreeWinSize=30

"ctags
set tags=./tags;/
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
