if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

let g:neobundle#install_process_timeout = 1000

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Takes a long time to build. 
" Really slows down NeoBundleUpdate.
" Better to uncomment and build as needed.
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

" Takes a long time to build. 
" Really slows down NeoBundleUpdate.
" Better to uncomment and build as needed.
NeoBundle 'https://github.com/Valloric/YouCompleteMe.git'
", {
"      \ 'build' : {
"      \    'unix' : './install.sh --clang-completer --system-libclang'
"      \ },
"\ }

NeoBundle 'Lokaltog/vim-easymotion.git'
NeoBundle 'Shougo/vimshell.vim.git'
NeoBundle 'Shougo/neomru.vim.git'
NeoBundle 'Shougo/unite.vim.git'
"NeoBundle 'marijnh/tern_for_vim.git'
NeoBundle 'scrooloose/nerdcommenter.git'
NeoBundle 'scrooloose/nerdtree.git'
NeoBundle 'scrooloose/syntastic.git'
NeoBundle 'sjl/gundo.vim.git'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'tpope/vim-abolish.git'
"NeoBundle 'terryma/vim-multiple-cursors.git'
"NeoBundle 'Yggdroot/indentLine.git'
NeoBundle 'ervandew/supertab.git'
NeoBundle 'Raimondi/delimitMate.git'
NeoBundle 'airblade/vim-rooter.git'
NeoBundle 'vimwiki/vimwiki.git'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'mattn/gist-vim', {'depends': 'mattn/webapi-vim'}

" NOTE: Must do vimball manually
" https://twitter.com/ShougoMatsu/status/354578023397343232
NeoBundle 'Conque-Shell'

call neobundle#end()
