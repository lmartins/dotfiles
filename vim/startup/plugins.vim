
" -----------------------------------------------------------------------------
" AIRLINE CONFIG
" -----------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
" let g:airline_left_sep=''
" let g:airline_right_sep=''
let g:airline_powerline_fonts=1
" let g:airline_left_sep=''
" let g:airline_right_sep=''
" let g:airline_theme='base16'
let g:airline_theme = 'airlineish'


" -----------------------------------------------------------------------------
" CYCLE
" -----------------------------------------------------------------------------
call AddCycleGroup( ['relative', 'absolute'] )


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

nnoremap <Leader>o :CtrlP<CR>
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader><Space> :CtrlPBuffer<cr>


"-----------------------------------------------------------------------------
" DRAGVISUALS
"-----------------------------------------------------------------------------
"vmap  <expr>  <LEFT>   DVB_Drag('left')
"vmap  <expr>  <RIGHT>  DVB_Drag('right')
"vmap  <expr>  <DOWN>   DVB_Drag('down')
"vmap  <expr>  <UP>     DVB_Drag('up')
"vmap  <expr>  D        DVB_Duplicate()

" -----------------------------------------------------------------------------
" EASYMOTION
" -----------------------------------------------------------------------------
let g:EasyMotion_leader_key = ','
map <Leader> <Plug>(easymotion-prefix)


" -----------------------------------------------------------------------------
" EMMET
" -----------------------------------------------------------------------------
let g:user_emmet_mode='a'    "enable all function in all modes.
" Change emmet expansion key to command + e
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")  This breaks Supertab, find a way to do  it
let g:user_emmet_expandabbr_key = '<D-e>'
let g:user_emmet_next_key = '<C-f>'
" let g:user_emmet_prev_key = '<C-F>'


" -----------------------------------------------------------------------------
" POWERLINE
" -----------------------------------------------------------------------------
" set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'



" -----------------------------------------------------------------------------
" VIM EXPAND REGION
" -----------------------------------------------------------------------------
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" " Extend the global default (NOTE: Remove comments in dictionary before sourcing)
" call expand_region#custom_text_objects({
"       " \ "\/\\n\\n\<CR>": 1,
"       " \ 'a]' :1,
"       " \ 'ab' :1,
"       " \ 'aB' :1,
"       \ 'ii' :0,
"       \ 'ai' :0,
"       \ })


"------------------------------------------------------------------------------
" " FUGITIVE
" "------------------------------------------------------------------------------
nmap <silent> <leader>gs :Gstatus<cr>
nmap <silent> <leader>gc :Gcommit<cr>
nmap <leader>ge :Gedit<cr>
nmap <silent><leader>gr :Gread<cr>
nmap <silent><leader>gb :Gblame<cr>


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


"------------------------------------------------------------------------------
" FOLDCYCLE
"------------------------------------------------------------------------------
let g:fold_cycle_default_mapping = 0 "disable default mappings
nmap <Space> <Plug>(fold-cycle-open)
nmap <M-Space> <Plug>(fold-cycle-close)


" -----------------------------------------------------------------------------
" GTFO
" -----------------------------------------------------------------------------
" calls iTerm instead of terminal
let g:gtfo#terminals = { 'mac' : 'iterm' }


" -----------------------------------------------------------------------------
" OBVIOUS RESIZE
" -----------------------------------------------------------------------------
"noremap <silent> <C-Up> :<C-U>ObviousResizeUp<CR>
"noremap <silent> <C-Down> :<C-U>ObviousResizeDown<CR>
"noremap <silent> <C-Left> :<C-U>ObviousResizeLeft<CR>
"noremap <silent> <C-Right> :<C-U>ObviousResizeRight<CR>




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
" SNEAK
" -----------------------------------------------------------------------------
nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S
xmap f <Plug>Sneak_s
xmap F <Plug>Sneak_S
omap f <Plug>Sneak_s
omap F <Plug>Sneak_S
nmap <enter> <Plug>SneakNext
xmap <enter> <Plug>SneakNext
nmap <bs>    <Plug>SneakPrevious
xmap <bs>    <Plug>SneakPrevious

" -----------------------------------------------------------------------------
" YOU COMPLETE ME
" -----------------------------------------------------------------------------
" let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']


" -----------------------------------------------------------------------------
" TABULARIZE Mappings

"if exists(":Tabularize")
	nmap <Leader>a= :Tabularize /=<CR>
	vmap <Leader>a= :Tabularize /=<CR>
	nmap <Leader>a: :Tabularize /:<CR>
	vmap <Leader>a: :Tabularize /:<CR>
"endif


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
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" Toggle NERDTree
" nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer

nnoremap <F10> :NERDTreeToggle<cr>
imap <F10> <Esc>:NERDTreeToggle<cr>i
nmap <silent> <leader>r :NERDTreeFind<cr>
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
" nmap <leader>s <Plug>(wildfire-quick-select)
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
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"
" this mapping Enter key to <C-y> to chose the current highlight item
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"





