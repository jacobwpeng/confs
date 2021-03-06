set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'guns/xterm-color-table.vim'
Plugin 'ChrisKempson/Tomorrow-Theme'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'WolfgangMehner/vim-plugins'
Plugin 'uarun/vim-protobuf'
Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-jp/cpp-vim'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'vim-scripts/wombat256.vim'
"Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0ng/vim-hybrid'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'rhysd/vim-clang-format'
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on     " required

syntax on
language C
"colorscheme wombat256mod
colorscheme Tomorrow-Night-Eighties
"set background=dark
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
set tabstop=2 
set softtabstop=2 
set shiftwidth=2 
set expandtab
set autoindent 
set autochdir
set cindent

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set fdm=indent
set foldlevelstart=99
set modeline
set ls=2

hi TabLine ctermfg=25 ctermbg=White
hi TabLineSel ctermfg=Black ctermbg=214
hi TabLineFill ctermfg=235 ctermbg=235

"set dir=~/.vimswp
set hidden

"let mapleader = ","
"let g:mapleader = ","
"
map <Space> <leader>

nmap <leader>; :tabp<cr>
nmap <leader>' :tabn<cr>
nmap <leader>] :NextColorScheme<CR>
nmap <leader>[ :PrevColorScheme<CR>
nmap <leader>. za
"imap <Tab> <C-N>
inoremap <c-s> <Esc>:update<CR>a
inoremap jk <Esc>
noremap <c-s> :update<CR>
inoremap <c-q> <Esc>:quit<CR>a
noremap <c-q> :quit<CR>
nnoremap <CR> :noh<CR><CR>
nnoremap <S-H> :join <CR>
set pastetoggle=<leader>v
vnoremap <c-c> :w! /tmp/clipboard.txt <CR>
inoremap <c-v> <Esc>:read !cat '/tmp/clipboard.txt' <CR>

"for filter search
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

nnoremap <silent> [b :bp<CR>
nnoremap <silent> ]b :bn<CR>
nnoremap <silent> [B :bf<CR>
nnoremap <silent> ]B :bl<CR>

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

"cvim
"let g:C_SourceCodeExtensions  = 'c h cc cp cxx hpp cpp CPP c++ C i ii'

"ctags
set tags+=./tags;/
"nmap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"noremap <C-h> :tp<CR>
"nmap <C-l> :tn<CR>

"gtags
let Gtags_Auto_Map = 1
let g:Gtags_OpenQuickfixWindow = 0
set csprg=gtags-cscope
nnoremap <F5> :!global -u<CR><CR>

"cscope
set splitright
set cscopetag
set cscopeprg=gtags-cscope 
function! LoadCscope()
  let db = findfile("GTAGS", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/GTAGS$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db
    "echo "cs add " . db
    set cscopeverbose
  endif
endfunction
au BufEnter /* call LoadCscope()

filetype plugin on
set omnifunc=syntaxcomplete#Complete

"omnicppcomplete
let OmniCpp_ShowScopeInAbbr = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "fx"]
set completeopt-=preview
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"NerdTree
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0
let g:NERDChristmasTree=1

"Tagbar
nmap <C-t> :TagbarToggle<CR>

"vim-airline
let g:airline_left_sep=''
let g:airline_right_sep=''

"ctrlp
let g:ctrlp_prompt_mappings = {
  \ 'PrtSelectMove("k")':   ['<S-K>'],
  \ 'PrtSelectMove("j")':   ['<S-J>'],
  \ 'PrtCurRight()':        ['<right>'],
  \ }
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.?(git|hg|svn|build)$',
  \ 'file': '\v\.(d|so|pyc)$',
  \ }

set complete=.,w,b,u,t

"bufferline
let g:bufferline_echo = 0

"copy & past
set clipboard=unnamed

"on exit
au VimLeave * :!clear
"set t_te= t_ti=
"au VimLeave * :!clear

"youcompleteme
let g:ycm_global_ycm_extra_conf=$HOME . "/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_filepath_completion_use_working_dir = 1
let g:ycm_key_invoke_completion = '<C-o>'

"clang-format
autocmd VimEnter * ClangFormatAutoToggle

"vim-go
au FileType go nmap <leader>r <Plug>(go-run)
