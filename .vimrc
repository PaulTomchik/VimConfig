set nocompatible

" Key mappings, colors, etc.
source ~/.vim/config/interface.vim

" Neobundle plugin manager
source ~/.vim/config/neobundle.vim

filetype plugin indent on

" Configure plugins
source ~/.vim/config/plugin-configs.vim


" JsBeautify
"autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
"autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
"autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>


" Automatically open, but do not go to (if there are errors) the quickfix /
" location list window, or close it when is has become empty.
"
" Note: Must allow nesting of autocmds to enable any customizations for quickfix
" buffers.
" Note: Normally, :cwindow jumps to the quickfix window if the command opens it
" (but not if it's already open). However, as part of the autocmd, this doesn't
" seem to happen.
"autocmd QuickFixCmdPost [^l]* nested cwindow
"autocmd QuickFixCmdPost    l* nested lwindow

let g:dbext_default_SQLSRV_cmd_terminator = ";"
" end 0/9/14
" Octave syntax 
augroup filetypedetect 
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave 
augroup END 

" Use keywords from Octave syntax language file for autocomplete 
if has("autocmd") && exists("+omnifunc") 
   autocmd Filetype octave 
   \	if &omnifunc == "" | 
   \	 setlocal omnifunc=syntaxcomplete#Complete | 
   \	endif 
endif

set wmh=0
set fillchars=vert:│
hi VertSplit        ctermfg=234  ctermbg=none cterm=none

