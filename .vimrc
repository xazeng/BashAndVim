if has("gui")
	set lines=9999
	set columns=9999
	color desert
	set mouse=""
endif

" *******************************************
""" general
 
set nocompatible
set noexrc 
set clipboard+=unnamed 
set hidden
set history=50

set nobackup
set nowb
set noswapfile

set autoread
" set autowrite
" set autowriteall


" *******************************************
""" display
set nolazyredraw
set cursorline
set novisualbell
set number
set scrolloff=5
set wrap

""" color
set background=dark
syntax on

""" highlight


" *******************************************
""" window layout

""" cmd 
set cmdheight=2

""" status 
set laststatus=2 
set ruler
set statusline= 
set statusline+=%2*%-3.3n%0*\ 
set statusline+=%f\ 
set statusline+=%h%1*%m%r%w%0* 
set statusline+=[ 
if v:version >= 600 
	set statusline+=%{strlen(&ft)?&ft:'none'}, 
	set statusline+=%{&encoding}, 
endif 
set statusline+=%{&fileformat}] 
if filereadable(expand("$VIM/plugin/vimbuddy.vim")) 
	set statusline+=\ %{VimBuddy()} 
endif 
set statusline+=%= 
set statusline+=0x%-8B\ 
set statusline+=%-14.(%l,%c%V%)\ %<%P


" ******************************************
""" search setting
set incsearch
set hlsearch
set ignorecase
set smartcase
set nowrapscan
set magic


" *******************************************
""" format
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ts=4
set expandtab

""" c/cpp
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s


" *************************************
""" encoding
let &termencoding=&encoding
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

if &term=="xterm"
	set t_Co=8
	set t_Sb=^[[4%dm
	set t_Sf=^[[3%dm
endif

" ******************************************
""" key 
set backspace=start,indent,eol
set whichwrap=<,>,[,]
set winaltkeys=no

""" tab
set wildmenu
set wildmode=list:longest
set wildignore=*.dll,*.o,*.obj,*.exe,*.jpg,*.gif,*.png

""" %
set showmatch
set matchtime=2
set matchpairs=(:),{:},[:],<:>

let mapleader="f"



" *******************************************
""" plugin
filetype plugin indent on


""" bufexplorer
" \be :BufExplorer
nmap <leader>d :BufExplorer<cr>

""" NERDTree
" :NERDTreeToggle
nmap <leader>f :NERDTreeToggle<cr>
let g:NERDTreeAutoCenterThreshold=5
let g:NERDTreeIgnore=[]
" let g:NERDTreeQuitOnOpen=1
let g:NERDTreeShowHidden=1
let g:NERDTreeSortOrder=['\/$']
" NERDTreeStatusline
" NERDTreeWinSize
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrows=0
let g:NERDTreeQuitOnOpen=1

""" taglist
" :TlistToggle
nmap <leader>l :TlistToggle<cr>
let g:Tlist_Ctags_Cmd='/usr/bin/ctags' 
if has("win32")
let g:Tlist_Ctags_Cmd='c:\bin/ctags.exe' 
endif
let g:Tlist_Close_On_Select=1
let g:Tlist_OnlyWindow=1
let g:Tlist_File_Fold_Auto_Close=1
let g:Tlist_GainFocus_On_ToggleOpen=1
let g:Tlist_Max_Submenu_Items=10
let g:Tlist_Max_Tag_length=20
let g:Tlist_Process_File_Always=1
let g:Tlist_Show_One_File=1
let g:Tlist_Sort_Type='name'
" let g:Tlist_Use_Right_Window=1
" let g:Tlist_WinWidth=50


""" ctags
" :!ctags -R . <CR>   ... tags+=
if filereadable("./tags")
	set tags+="./tags"
endif


""" a.vim
nmap <silent><leader>o :A<cr><Esc>

""" NERD_commenter
" Default mapping: [count]<leader>cc <plug>NERDCommenterComment
" Default mapping: [count]<leader>c<space> <plug>NERDCommenterToggle

""" cpp.vim

""" matchit

""" visIncr

""" fencview
" :FencAutoDetect
" :FencView
let g:fencview_autodetect=0

" *******************************************
" shortcut
nmap <leader>gcpp :grep --include="*.h" --include="*.cpp" --include="*.inl" --include="*.c" --include="*.hpp" -nr 
nmap <leader>glua :grep --include="*.lua" -nr 
nmap <leader>gsh :grep --include="*.sh" --include="*.inc" -nr 
nmap <leader>gjs :grep --include="*.js" --include="*.node" -nr 

" *******************************************
" undone 

" option
" completeopt

" plugin
" matchit
" fencview









