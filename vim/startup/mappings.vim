"-----------------------------------------------------------------------------
" KEYS INDEX
" A - Alt
" M - Alt
" D - Command
" C - Control
" S - Shift
"-----------------------------------------------------------------------------


"-----------------------------------------------------------------------------
" INTERFACE
"-----------------------------------------------------------------------------
let mapleader = ","

" Unmap the arrow keys
" no <down> <Nop>
" no <left> <Nop>
" no <right> <Nop>
" no <up> <Nop>
"ino <down> <Nop>
"ino <left> <Nop>
"ino <right> <Nop>
"ino <up> <Nop>
" vno <down> <Nop>
" vno <left> <Nop>
" vno <right> <Nop>
" vno <up> <Nop>

"Map shift-space to search and shift-space to backwards search
nnoremap <M-space> /
nnoremap <S-space> ?

"Toggle to different paste modes
nnoremap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nnoremap \R :set noexpandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nnoremap \m :set expandtab tabstop=2 shiftwidth=4 softtabstop=4<CR>

"Toggle wrap mode
nnoremap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

"Map for removing search highlighting
nnoremap <silent> <leader><cr> :noh<cr>

"Shortcut for editing my vimrc and gvimrc in a new tab
nnoremap <leader>vv :tabedit $MYVIMRC<cr>
nnoremap <leader>vg :tabedit $MYGVIMRC<cr>
nnoremap <leader>vl :tabedit ~/.vimrc.local<cr>

"Commands for opening the current file or directory in another application
nnoremap <silent> <leader>oc :silent !open -a /Applications/Google\ Chrome.app/ %<cr>
nnoremap <silent> <leader>of :silent !open -a /Applications/Firefox.app/ %<cr>
nnoremap <silent> <leader>os :silent !open -a /Applications/Safari.app/ %<cr>
nnoremap <silent> <leader>ot :silent !open -a /Applications/iTerm.app/ %:p:h<cr>
nnoremap <silent> <leader>oi :silent !open .<cr>

"Will open files in current directory, allows you to leave the working cd in
"the project root. You can also use %% anywhere in the command line to expand.
cnoremap %% <C-R>=expand('%:h').'/'<cr>
nmap <leader>ew :e %%
nmap <leader>es :sp %%
nmap <leader>ev :vsp %%
nmap <leader>et :tabe %%

"Change current directory to that of the file in the buffer with CMD + D
nnoremap <silent> <D-d> :cd %:p:h<cr

"Jump back to last edited buffer
"nnoremap <D-b> <C-^>
"inoremap <D-b> <esc><C-^>
nnoremap <leader><leader> <c-^>

" Control P like sublime text
map <C-p> :CtrlP<cr>
map <C-P> :CtrlPBuffer<cr>

" Keep search matches in the middle of the screen
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz
nmap g; g;zz
nmap g, g,zz

" Close buffers without closing window
:nnoremap <Leader>q :Bdelete<CR>

" Search documentation in Dash.app (OSX only)
nmap <silent> <leader>d <Plug>DashSearch

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


"-----------------------------------------------------------------------------
" FOLDING
"-----------------------------------------------------------------------------
autocmd FileType scss setlocal foldmethod=marker
autocmd FileType scss setlocal foldmarker={,}

" Toggle fold with spacebar if cursor placed in fold
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>

"-----------------------------------------------------------------------------
" INDENTATION
"-----------------------------------------------------------------------------

nnoremap <D-[> <<
nnoremap <D-]> >>
inoremap <D-[> <esc><<A
inoremap <D-]> <esc>>>A
xnoremap <D-[> <gv
xnoremap <D-]> >gv

" Fix indentation on file
map <F7> mzgg=G`z<CR>

"-----------------------------------------------------------------------------
" WINDOW NAVIGATION
"-----------------------------------------------------------------------------
"Easier window navigation, control+letter moves in that direction
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Moving around tabs with Alt + Arrows
"map <A-LEFT> :wincmd h<CR>
"map <A-RIGHT> :wincmd l<CR>
"map <A-UP> :wincmd k<CR>
"map <A-DOWN> :wincmd j<CR>

"-----------------------------------------------------------------------------
" CODE NAVIGATION
"-----------------------------------------------------------------------------

" Command-Shift-F for Ack
map <D-F> :Ag<space>

"emacs style jump to end of line in insert mode
"prevents conflict with autocomplete
inoremap <expr> <c-e> pumvisible() ? "\<c-e>" : "\<c-o>A"
inoremap <C-a> <C-o>I

"Remap j and k to act as expected when used on long, wrapped, lines
nnoremap j gj
nnoremap k gk

" ChangeInside
nnoremap <silent> <Leader>c :ChangeInsideSurrounding<CR>
nnoremap <silent> <Leader>C :ChangeAroundSurrounding<CR>

" Move to next/previous line with same indentation
" ALT + K / J
nnoremap <M-,> :call search('^'. matchstr(getline('.'), '\(^\s*\)') .'\%<' . line('.') . 'l\S', 'be')<CR>
nnoremap <M-.> :call search('^'. matchstr(getline('.'), '\(^\s*\)') .'\%>' . line('.') . 'l\S', 'e')<CR>

"-----------------------------------------------------------------------------
" CODE MANIPULATION
"-----------------------------------------------------------------------------

" D-L use for copy-line command
map <D-l> <esc>^vg_"+y
imap <D-l> <esc>^vg_"+y


" Darn semi-colons, make my life a little easier, but first unmap <D-;>
imap <D-;> <esc>A;
nmap <D-;> A;

" Commentary controls like Sublime Text
nmap <D-/> \\\
vmap <D-/> \\

" Auto indent when opening brackets and moving to a new line
inoremap <C-Return> <Esc>$T{i<CR><CR><C-o>k<Tab>

" Bubble lines, preserves indentation, courtesy of -romainl-
nnoremap <silent> <C-Up>   :move-2<CR>==
nnoremap <silent> <C-Down> :move+<CR>==
xnoremap <silent> <C-Up>   :move-2<CR>gv=gv
xnoremap <silent> <C-Down> :move'>+<CR>gv=gv

"Duplicate lines above and below
inoremap <C-A-down> <esc>Ypk
nnoremap <C-A-down> Ypk
xnoremap <C-A-down> y`>pgv
inoremap <C-A-up> <esc>YPj
nnoremap <C-A-up> YPj
xnoremap <C-A-up> y`<Pgv

"Select a line without trailing whitespace or linebreaks
nnoremap <leader>l <esc>^vg_

"Open line above (ctrl-shift-o much easier than ctrl-o shift-O)
"SO USEFUL!!!
inoremap <C-Return> <C-o>o
inoremap <C-S-Return> <C-o>O

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"set Y to duplicate line or selection
nmap Y yyp
vmap Y y`>pgv " Duplicates then regains selection.

" Close open Tags
" Find way to map these keys
"inoremap <D-.> </<C-X><C-O>
" imap <D-.> </<C-X><C-O>


" EASY OPERATOR LINE
omap <Leader>L  <Plug>(easyoperator-line-select)
xmap <Leader>L  <Plug>(easyoperator-line-select)
nmap d<Leader>L <Plug>(easyoperator-line-delete)
nmap p<Leader>L <Plug>(easyoperator-line-yank)



