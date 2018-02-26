" Configuration file for vim
set modelines=0         " CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible        " Use Vim defaults instead of 100% vi compatibility
set backspace=2         " more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup



" my settings below.

set number
set laststatus=2
set statusline=%<%f\ %m%r%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l/%L,%v


let g:netrw_liststyle=3

set incsearch
set nowrapscan

set clipboard=unnamed


" nnoremap <Esc><Esc> :noh<CR>
" inoremap jj <Esc>
" nnoremap <space>n :NERDTreeToggle<CR>
" nnoremap = gg=G``



" move

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap Q <Nop>

" window

" nnoremap s <Nop>
" nnoremap ss <C-w>v
" nnoremap sh <C-w>h
" nnoremap sl <C-w>l
" nnoremap <silent>sv :so ~/.vimrc<Esc>
" nnoremap <silent>sg :so ~/.gvimrc<Esc>
" nnoremap <space>b <C-^>

nnoremap [ 4k0
nnoremap ] 4j0


nnoremap t i_<Esc>r
nnoremap dw diw
nnoremap cw ciw
nnoremap yw yiw
"
nnoremap dc ddO<Esc>

" vnoremap // I//<Esc>  " comment out - use after C-v
" inoremap [ []<Left>
" inoremap {<CR> {<CR>}<Esc>O
" inoremap ( ()<Left>
" inoremap ' ''<Left>
" inoremap " ""<Left>

" set directory=~/.vim/tmp
" set backupdir=~/.vim/tmp
" set viminfo+=n~/.vim/tmp/viminfo.txt
" set undodir=~/.vim/undo

set tabstop=2  " tab width
set shiftwidth=2  " indent width
set softtabstop=2  " width which backspace key affect
set autoindent
set smartindent
set list
set listchars=tab:>.
set nowrap



"--------------------------------------------------------------------------
"" neobundle
"set nocompatible               " Be iMproved
"filetype off                   " Required!
"
"if has('vim_starting')
"        set runtimepath+=~/.vim/bundle/neobundle.vim/
"endif
"
"call neobundle#begin(expand('~/.vim/bundle/'))
"NeoBundleFetch 'Shougo/neobundle.vim'
"call neobundle#end()
"
"NeoBundleFetch 'Shougo/neobundle.vim'
"NeoBundle 'scrooloose/nerdtree'
"
"filetype plugin indent on     " Required!
"
"" Installation check.
"if neobundle#exists_not_installed_bundles()
"        echomsg 'Not installed bundles : ' .
"                                \ string(neobundle#get_not_installed_bundle_names())
"        echomsg 'Please execute ":NeoBundleInstall" command.'
"        "finish
"end
