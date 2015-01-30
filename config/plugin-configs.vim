""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Omnicompletion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd Filetype * runtime! autoload/eclim/<amatch>/complete.vim
    \ | let s:cfunc = 'eclim#'.expand('<amatch>').'#complete#CodeComplete'
    \ | if exists('*'.s:cfunc) | let &l:omnifunc=s:cfunc | endif

"Enable omni completion.
"if has("autocmd")
"	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"	autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"	autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"	autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"endif
set omnifunc=syntaxcomplete#Complete


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gundo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <F5> :GundoToggle<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Valloric/YouCompleteMe
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Eclim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:EclimCompletionMethod = 'omnifunc'
"let g:EclimKeepLocalHistory = 1
"nnoremap <silent> <buffer> <leader>i :JavaImport<cr>
"nnoremap <silent> <buffer> <leader>d :JavaDocSearch -x declarations<cr>
"nnoremap <silent> <buffer> <leader>s :JavaSearchContext<cr>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if !argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Unite
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:unite_source_history_yank_enable = 1
" call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
"nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
"nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Unite
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:EclimCompletionMethod = 'omnifunc'

if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.java = '\k\.\k*'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JsBeautify
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
"autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
"autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Supertab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
 "Remap autocomplete menu control keys
"inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
"inoremap <expr> j pumvisible() ? "\<C-n>" : "j"
"inoremap <expr> k pumvisible() ? "\<C-p>" : "k"
"inoremap <expr> h pumvisible() ? "\<PageUp>\<C-n>\<C-p>" : "h"
"inoremap <expr> l pumvisible() ? "\<PageDown>\<C-n>\<C-p>" : "l"

"let g:SuperTabCrMapping = 0 " prevent remap from breaking supertab
"let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabContextDefaultCompletionType = "<c-n>"
"set wildmode=list:longest,full
"let g:SuperTabClosePreviewOnPopupClose = 1 " close scratch window on autocompletion


"let g:dbext_default_SQLSRV_cmd_terminator = ";"
" end 0/9/14
" Octave syntax 

