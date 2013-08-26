"call pathogen#infect()
colorscheme wombat256mod
"colorscheme molokai
"colorscheme peaksea
"colorscheme wombat256mod
set background=dark
"colorscheme vividchalk
syntax on
filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"set omnifunc=syntaxcomplete#Complete
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
"Bundle 'davidhalter/jedi-vim'
filetype plugin indent on


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
set expandtab
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set autoindent 
set cindent

set fdm=indent
set foldlevelstart=99
set dir=~/.vimswp
set modeline
set ls=2
set statusline=%*\ %<%F%*[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
hi StatusLine term=reverse ctermbg=0 ctermfg=5
hi TabLineSel ctermfg=46 ctermbg=0
hi TabLine ctermfg=14 ctermbg=0
hi TabLineFill ctermfg=14 ctermbg=0
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=0 ctermfg=2 gui=undercurl guisp=Magenta
  au InsertLeave * hi StatusLine term=reverse ctermbg=0 ctermfg=5 gui=bold,reverse
endif

let mapleader = ","
let g:mapleader = ","

nmap <leader>; :tabp<cr>
nmap <leader>' :tabn<cr>
nmap <leader>. za
imap <tab> <C-k>
imap jj <ESC>
inoremap <c-s> <Esc>:update<CR>a
noremap <c-s> :update<CR>
inoremap <c-q> <Esc>:quit<CR>a
noremap <c-q> :quit<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <leader>c :YcmDiags <CR>
set pastetoggle=<leader>v

"iab #i #include

"NERDTree
let NERDTreeWinSize=30
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = '/Users/pw2191195/.ycm_extra_conf.py'
