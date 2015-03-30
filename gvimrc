" GUI Defaults
" ----------------------------------------------------------------------------
set guioptions-=T           "Hide MacVim toolbar by default
set guioptions-=r           "Do not use scrollbars
set guioptions-=R           "Do not use scrollbars
set guioptions-=l           "Do not use scrollbars
set guioptions-=L           "Do not use scrollbars
set linespace=4             "More vertical space
set guifont=Fira\ Mono:h11  "Set font type and size.
set fuopt=maxvert,maxhorz   "Sets max height when entering fullscreen
set fuopt=background:Normal "Set fullscreen bg to match the text bg

" Colorscheme
colorscheme Abra       "Set colorscheme

" Mac Specific Keybindings
" ----------------------------------------------------------------------------

set macmeta

" Command-Return for fullscreen
macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

" Darn semi-colons, make my life a little easier, but first unmap <D-;>
macmenu &Tools.Spelling.To\ Next\ error key=<nop>
imap <D-;> <esc>A;
nmap <D-;> A;

" Command-Shift-F for Ack
map <D-F> :Ag<space>

" Unmap D-L use for copy-line command
macmenu &Tools.List\ Errors key=<nop>
map <D-l> <esc>^vg_"+y
imap <D-l> <esc>^vg_"+y

" Kill Make key for markdown bolding in writer plugin
macmenu &Tools.Make key=<nop>

" Control P like sublime text
macmenu &File.Print key=<nop>
map <D-p> :CtrlP<cr>
map <D-P> :CtrlPBuffer<cr>

" Commentary controls like Sublime Text
nmap <D-/> \\\
vmap <D-/> \\

" Writer
map <D-R> :WriterToggle<CR>
imap <D-R> <esc>:WriterToggle<CR>

" Other stuff
" ----------------------------------------------------------------------------

set lines=999               "Sets new windows to full-height
set cursorline              "Highlights the line the cursor is on

" Resize to fill screen
nnoremap <F16> :set lines=999 columns=999<cr>
inoremap <F16> <esc>:set lines=999 columns=999<cr>a

" Resize to tall narrow
nnoremap <F17> :set lines=999 columns=100<cr>
inoremap <F17> <esc>:set lines=999 columns=100<cr>a

" Resize to tallest
nnoremap <F18> :set lines=999<cr>
inoremap <F18> <esc>:set lines=999<cr>a
