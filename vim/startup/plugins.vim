
" -----------------------------------------------------------------------------
" AIRLINE CONFIG
" -----------------------------------------------------------------------------
" let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline_right_sep=''
" let g:airline_left_sep=''
" let g:airline_left_sep = '▶'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" -----------------------------------------------------------------------------
" POWERLINE
" -----------------------------------------------------------------------------
" set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'


" -----------------------------------------------------------------------------
" COSCO
" VIM colon and semicolon insertion bliss
" -----------------------------------------------------------------------------
autocmd FileType javascript,css,scss nnoremap <silent> <Leader>; :call cosco#commaOrSemiColon()<CR>
autocmd FileType javascript,css,scss inoremap <silent> <Leader>; <c-o>:call cosco#commaOrSemiColon()<CR>


"-----------------------------------------------------------------------------
" CTRLP
"-----------------------------------------------------------------------------
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = ''
let g:ctrlp_custom_ignore = '\v[\/](jspm_packages|node_modules|bower_components|dist|build)|(\.(swp|ico|git|svn))$'

nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader><space> :CtrlPBuffer<cr>



" -----------------------------------------------------------------------------
" EASYMOTION
" -----------------------------------------------------------------------------
" let g:EasyMotion_leader_key = ','
map <Leader> <Plug>(easymotion-prefix)
" map <Leader> <Plug>(easymotion-prefix)


" -----------------------------------------------------------------------------
" EMMET
" -----------------------------------------------------------------------------
let g:user_emmet_mode='a'    "enable all function in all modes.
" Change emmet expansion key to command + e
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")  This breaks Supertab, find a way to do  it
let g:user_emmet_expandabbr_key = '<D-e>'
let g:user_emmet_next_key = '<C-f>'
" let g:user_emmet_prev_key = '<C-F>'


"------------------------------------------------------------------------------
" DELIMITMATE
"------------------------------------------------------------------------------

" Delimitmate place cursor correctly n multiline objects e.g.
" if you press enter in {} cursor still be
" in the middle line instead of the last
let delimitMate_expand_cr = 1

" Delimitmate place cursor correctly in singleline pairs e.g.
" if x - cursor if you press space in {x} result will be { x } instead of { x}
let delimitMate_expand_space = 1


" -----------------------------------------------------------------------------
" GTFO
" -----------------------------------------------------------------------------
" calls iTerm instead of terminal
let g:gtfo#terminals = { 'mac' : 'iterm' }



"------------------------------------------------------------------------------
" THE SILVER SEARCHER
"------------------------------------------------------------------------------
" http://robots.thoughtbot.com/faster-grepping-in-vim
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif



" -----------------------------------------------------------------------------
" SYNTASTIC
" -----------------------------------------------------------------------------
let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': ['html', 'javascript', 'php'] }
let g:syntastic_javascript_jshint_args = '--config /Users/luismartins/.jshintrc'


" -----------------------------------------------------------------------------
" STATUS LINE
" -----------------------------------------------------------------------------

set laststatus=2          "Always show status line

"Syntastic Status Line
" let g:syntastic_stl_format = '[%E{Err: L%fe #%e}%B{, }%W{Warn: L%fw #%w}]'

"Status line
set statusline=\ %f\ %m\ %r%=%{SyntasticStatuslineFlag()}\ \ \ %y%12.12(%l\,\ %c%V%)%6.6p%%\


" -----------------------------------------------------------------------------
" TABULARIZE Mappings

if exists(":Tabularize")
	nmap <Leader>a= :Tabularize /=<CR>
	vmap <Leader>a= :Tabularize /=<CR>
	nmap <Leader>a: :Tabularize /:\zs<CR>
	vmap <Leader>a: :Tabularize /:\zs<CR>
endif


"-----------------------------------------------------------------------------
" TAGBAR
"-----------------------------------------------------------------------------
noremap <F11> :TagbarToggle<cr>

let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }



"-----------------------------------------------------------------------------
" NERD TREE
"-----------------------------------------------------------------------------
nnoremap <F10> :NERDTreeToggle<cr>
imap <F10> <Esc>:NERDTreeToggle<cr>i
nmap ,r :NERDTreeFind<CR>
nnoremap <F2> :GundoToggle<CR>
imap <F2> <Esc>:GundoToggle<cr>i
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>

let NERDTreeMinimalUI = 0
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1
let NERDTreeIgnore=['.git[[dir]]', 'node_modules', 'bower_components', 'jspm_packages', '\.DS_Store']



" -----------------------------------------------------------------------------
" WILDFIRE QUICK SELECT
" -----------------------------------------------------------------------------
nmap <leader>s <Plug>(wildfire-quick-select)
" use '*' to mean 'all other filetypes'
" in this example, html and xml share the same text objects
" let g:wildfire_objects = {
"     \ "*" : ["i'", 'i"', "i)", "i]", "i}"],
"     \ "html,xml,twig" : ["at","it"],
" \ }


" -----------------------------------------------------------------------------
" ULTISNIPS
" -----------------------------------------------------------------------------
let g:UltiSnipsEditSplit="vertical"



