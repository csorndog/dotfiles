set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc 
set guicursor= 
set nohlsearch
set noerrorbells 
set nu 
set nowrap 
set smartcase 
set noswapfile 
set nobackup 
set undodir=~/.vim/undodir 
set undofile 
set incsearch 
"set termguicolors 
set scrolloff=8 
set noshowmode 
set completeopt=menuone,noinsert,noselect 
set colorcolumn=80
set signcolumn=yes

" more space for displaying messages
set cmdheight=2 


" =====================================================================
" VIM PLUGINS 
" =====================================================================

"" vim-plug plugin manager  (store plugins in "myplugins" directory 

" vim-plug command line install
" vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


call plug#begin('~/.vim/myplugins')
" Must use single quotes

" on-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" colorscheme install
Plug 'gruvbox-community/gruvbox'

" ranger vim
Plug 'francoiscabrol/ranger.vim'
call plug#end()

" setting colorscheme after install
colorscheme gruvbox
highligh Normal guibg=none
