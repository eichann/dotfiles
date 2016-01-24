:syntax on
set tabstop=2
set autoindent
set expandtab
set shiftwidth=2
set nocompatible
set number

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  endif
  call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  NeoBundle     'vim-ruby/vim-ruby'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'tpope/vim-fugitive'
  " ここに入れたいプラグインを記入

  call neobundle#end()
  filetype plugin indent on

  " Be able to use fish
  if $SHELL =~ 'fish'
          set shell=/bin/sh
      endif

" Change keys
nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

" Change insert keys
inoremap <silent> jj <ESC>
