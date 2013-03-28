call pathogen#infect()
syntax on
filetype plugin indent on
"colorscheme slate
"colorscheme vividchalk
"set background=dark
set nocompatible
set term=color_xterm
set t_Co=256
"set nobackup
"set nowritebackup
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
"set noexpandtab 
set expandtab
set autoindent 
set cindent

set fdm=indent
set foldlevelstart=99
"set backupdir=~/.vimswp
set dir=~/.vimswp
set modeline
set ls=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
hi StatusLine term=reverse ctermbg=5 ctermfg=0
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
  au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif

let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<cr>
nmap <leader>m :!make<cr>
nmap <leader>; :tabp<cr>
nmap <leader>' :tabn<cr>
nmap <leader>. za
imap <Tab> <C-N>
inoremap <c-s> <Esc>:update<CR>
noremap <c-s> :update<CR>
set pastetoggle=<leader>v

"inoremap <C-F> <C-P>
"inoremap <C-B> <C-N>

"NERDTree
let NERDTreeWinSize=30

"cscope
 if has("cscope")
		 set cscopetag   " 使支持用 Ctrl+]  和 Ctrl+t 快捷键在代码间跳来跳去
		 " check cscope for definition of a symbol before checking ctags:
		 " set to 1 if you want the reverse search order.
		 set csto=1
		 
		 " add any cscope database in current directory
		 if filereadable("cscope.out")
		 cs add cscope.out
		 " else add the database pointed to by environment variable
		 elseif $CSCOPE_DB !=""
		 cs add $CSCOPE_DB
		 endif
		 
		 " show msg when any other cscope db added
		 set cscopeverbose
		 
		 nmap <C-/>s :cs find s <C-R>=expand("<cword>")<CR><CR>
		 nmap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
		 nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
		 nmap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
		 nmap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
		 nmap <C-/>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
		 nmap <C-/>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
		 nmap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR>
 endif
