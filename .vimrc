if &compatible
  set nocompatible               " Be iMproved
endif

if !has('gui_running')
  set t_Co=256
endif

set guifont=Mononoki\ Nerd:h18

filetype plugin indent on
syntax enable

set laststatus=2
set backspace=2 " Allow to delete with backspace
set noshowmode

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'junegunn/vim-easy-align'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'

Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
" Plug 'itchyny/lightline-powerful'


"" Lint and Syntax checker
" Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'


Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'

Plug 'ntpeters/vim-better-whitespace'

"" Color Scheme
" Plug 'vim-scripts/xoria256.vim'
Plug 'ayu-theme/ayu-vim'
" Plug 'joshdick/onedark.vim'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Initialize plugin system
call plug#end()


set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu



let g:lightline = {
      \ 'colorscheme': 'one',
      \ }


" CtrlP
let g:ctrlp_match_window = 'top,order:ttb,min:20,max:20,results:20'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_working_path_mode = 'cra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|jpg|jpeg|png|bmp|svg|ttf|ico|eot)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


map <F2> :NERDTreeToggle<CR>


" Better White Space
autocmd BufEnter * EnableStripWhitespaceOnSave

