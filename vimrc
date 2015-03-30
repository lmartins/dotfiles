"-----------------------------------------------------------------------------
" SETUP
"-----------------------------------------------------------------------------

"The super basic stuff:
set encoding=utf-8        "UTF8 All day, every day
set nocompatible          "Use vim settings, not vi settings. Affects a lot.



" Vundle Setup
" Force vundle to see ftdetects
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


"Let vundle update itself
Plugin 'gmarik/Vundle.vim'


"Plugins
Plugin 'briandoll/change-inside-surroundings.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'gcmt/wildfire.vim'
Plugin 'godlygeek/tabular'
Plugin 'gregsexton/MatchTag'
Plugin 'lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/ZoomWin'
Plugin 'vim-scripts/delimitMate.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/vimwiki'
Plugin 'bling/vim-airline'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'majutsushi/tagbar'
Plugin 'rizzatti/dash.vim'


" Syntax
Plugin 'othree/html5.vim'
Plugin 'evidens/vim-twig'
Plugin 'pangloss/vim-javascript'
Plugin 'nono/jquery.vim'
Plugin 'nathanlong/vim-markdown'



" Colorschemes
Plugin 'nathanlong/vim-colors-solarized'
Plugin 'nathanlong/vim-colors-tomorrow'
Plugin 'nathanlong/vim-colors-writer'
Plugin 'flazz/vim-colorschemes'


" Plugins that don't play well with the terminal
if has("gui_running")
  Plugin 'SirVer/ultisnips'
endif


call vundle#end()


" FIX: PluginUpdate => git pull: git-sh-setup: No such file or directory in MacVim (OK in non-GUI version of Vim)
if has("gui_macvim")
    set shell=/bin/bash\ -l
endif



"-----------------------------------------------------------------------------
" GENERAL SETTINGS
"-----------------------------------------------------------------------------

"Basic stuff
filetype on               "Enable filetypes
filetype plugin on        "Enable filetype plugins
filetype indent on        "Enable filetype indent - loads indent.vim
syntax on                 "Enables syntax highlighting
set synmaxcol=600         "Don't try to highlight lines with 600+ columns
set history=100           "Sets how many lines of history VIM has to remember
set timeoutlen=500        "lowers leader+command timeout.
set hidden                "Switch between buffers without saving
set visualbell            "Use visual bell instead of beep add t_vb= to disable
set foldmethod=marker     "Use {{{ and }}} to define folds
set gdefault              "Apply substitutions globally on a line by default
set ttyfast               "Speed up terminal connection
" set clipboard=unnamed     "Give yank commands access to system clipboard



" Centralize backups, swap files, and persistent undo
set directory=~/.vim/tmp  "Set temp directory (don't litter local dir with swp/tmp files)
set nobackup              "Get rid of backups, I don't use them
set nowb                  "Get rid of backups on write
set noswapfile            "Get rid of swp files, I have never used them
if exists("&undodir")
    set undofile          "Persistent undo! Pure money.
    let &undodir=&directory
    set undolevels=500
    set undoreload=500
endif
set viminfo+=n$HOME/.vim/tmp/viminfo




"Changes leader from \ to ,
let mapleader = ","

"Map : to ; (then remap ;) -- massive pinky-saver
noremap ; :
noremap <M-;> ;

"More useful command-line completion
set wildmode=list:longest
set wildmenu

"In many terminal emulators the mouse works just fine, so have at it.
set mouse=a



"-----------------------------------------------------------------------------
" INTERFACE
"-----------------------------------------------------------------------------
set autoread              "reload files when changed on disk
set linespace=2           "Slightly higher linespace
set relativenumber        "Relative numbers make for easy movement
set number 		  "Always shows line numbers
set more                  "Adds the more prompt to long screen prints
set ruler                 "Cursor position in lower right
set showcmd               "Show command in bottom right
set showmode              "Shows current mode
set incsearch             "Set incremental searching
set hlsearch              "Highlight searching
set ignorecase            "case insensitive search
set smartcase             "case insensitive search
set mousehide             "hide mouse when typing
set foldenable            "Enable code folding
set splitbelow            "Split windows below the current window
set splitright            "Split vertical windows on the right
set lazyredraw            "Does not redraw while macro is running (faster)
set scrolloff=3           "Always keeps cursor three lines from bottom
set sidescrolloff=7       "Keeps 7 chars onscreen when nowrap set
set sidescroll=1          "Minimum number of columns to scroll sideways


"Shortcut to rapidly toggle `set list` (shows invisibles)
nmap <leader>L :set list!<CR>


"Use the similar symbols as TextMate for tabstops and EOLs
set listchars=tab:›\ ,eol:¬,trail:⋅


"Settings for diff mode
set diffopt=filler,vertical


"Allows splits to be squashed to one line
set winminheight=0
set winminwidth=0


"Toggle spellcheck
nnoremap <silent> <leader>s :setlocal spell!<CR>




"-----------------------------------------------------------------------------
" STATUS LINE
"-----------------------------------------------------------------------------

set laststatus=2          "Always show status line

"Syntastic Status Line
let g:syntastic_stl_format = '[%E{Err: L%fe #%e}%B{, }%W{Warn: L%fw #%w}]'

"Status line
set statusline=\ %f\ %m\ %r%=%{SyntasticStatuslineFlag()}\ \ \ %y%12.12(%l\,\ %c%V%)%6.6p%%\ 


"-----------------------------------------------------------------------------
" TEXT AND TAB SETTINGS
"-----------------------------------------------------------------------------

set tabstop=2              "Tab stuff
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab
set smartindent            "Indent stuff
set autoindent


"Allow backspacing over everything in insert mode
set backspace=indent,eol,start


"Better line wrapping
set wrap
set linebreak
" set textwidth=78
set formatoptions=qrn1
set showbreak=+\ 

"Toggle paste
set pastetoggle=<F4>


"Toggle to different paste modes
nnoremap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nnoremap \R :set noexpandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nnoremap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>


"Toggle wrap mode
nnoremap \w :setlocal wrap!<CR>:setlocal wrap?<CR>



"-----------------------------------------------------------------------------
" EXTRA COMMANDS AND EXTENDED FUNCTIONALITY
"-----------------------------------------------------------------------------

"Indentation like textmate/sublime
nnoremap <D-[> <<
nnoremap <D-]> >>
inoremap <D-[> <esc><<A
inoremap <D-]> <esc>>>A
xnoremap <D-[> <gv
xnoremap <D-]> >gv

"Easier window navigation, control+letter moves in that direction
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Firefox-style tab selection with command+number, mac only
nnoremap <D-1> 1gt
nnoremap <D-2> 2gt
nnoremap <D-3> 3gt
nnoremap <D-4> 4gt
nnoremap <D-5> 5gt
nnoremap <D-6> 6gt
nnoremap <D-7> 7gt
nnoremap <D-8> 8gt
nnoremap <D-9> 9gt
nnoremap <D-0> :tablast<CR>
inoremap <D-1> <esc>1gt
inoremap <D-2> <esc>2gt
inoremap <D-3> <esc>3gt
inoremap <D-4> <esc>4gt
inoremap <D-5> <esc>5gt
inoremap <D-6> <esc>6gt
inoremap <D-7> <esc>7gt
inoremap <D-8> <esc>8gt
inoremap <D-9> <esc>9gt
inoremap <D-0> <esc>:tablast<CR>

"emacs style jump to end of line in insert mode
"prevents conflict with autocomplete
inoremap <expr> <c-e> pumvisible() ? "\<c-e>" : "\<c-o>A"
inoremap <C-a> <C-o>I

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

"Remap j and k to act as expected when used on long, wrapped, lines
nnoremap j gj
nnoremap k gk

"Open line above (ctrl-shift-o much easier than ctrl-o shift-O)
"SO USEFUL!!!
inoremap <C-Enter> <C-o>o
inoremap <C-S-Enter> <C-o>O


"Map space to search and shift-space to backwards search
nnoremap <space> /
nnoremap <S-space> ?

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
nnoremap <silent> <D-d> :cd %:p:h<cr>


"Jump back to last edited buffer
nnoremap <D-b> <C-^>
inoremap <D-b> <esc><C-^>



"-----------------------------------------------------------------------------
" HELPER FUNCTIONS
"-----------------------------------------------------------------------------

"Jump to last cursor position when opening a file
autocmd BufReadPost * call s:SetCursorPosition()
function! s:SetCursorPosition()
    if &filetype !~ 'svn\|commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    end
endfunction

"Autoclose unactive buffers - activate with :call CloseHiddenBuffers()
"http://stackoverflow.com/questions/2974192/how-can-i-pare-down-vims-buffer-list-to-only-include-active-buffers
command! -nargs=* Only call s:CloseHiddenBuffers()
function! s:CloseHiddenBuffers()
  " figure out which buffers are visible in any tab
  let visible = {}
  for t in range(1, tabpagenr('$'))
    for b in tabpagebuflist(t)
      let visible[b] = 1
    endfor
  endfor
  " close any buffer that are loaded and not visible
  let l:tally = 0
  for b in range(1, bufnr('$'))
    if bufloaded(b) && !has_key(visible, b)
      let l:tally += 1
      exe 'bw ' . b
    endif
  endfor
  echon "Deleted " . l:tally . " buffers"
endfun

map <leader>bc :call CloseHiddenBuffers()<cr>

"Make .vimrc edits active without relaunch
if has("autocmd")
  augroup myvimrchooks
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
  augroup END
endif



"-------------------"
" FILETYPE SETTINGS
"-------------------"

if has("autocmd")
    au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
    au BufRead,BufNewFile *.txt,*.text set filetype=markdown
    au FileType html,xhtml,css,scss,ruby,eruby,liquid,pml,yaml,php,coffee,vim setlocal ts=2 sts=2 sw=2 expandtab
    au FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
    au FileType css,scss,sass setlocal iskeyword+=-
    au FileType markdown setlocal spell
endif

"Easy filetype switching
nnoremap _md :set ft=markdown<CR>
nnoremap _hh :set ft=html<CR>
nnoremap _js :set ft=javascript<CR>
nnoremap _jq :set ft=javascript syntax=jQuery<CR>
nnoremap _pp :set ft=php<CR>

"-------------------"
" PLUGIN SETTINGS
"-------------------"

"Quick Mappings
nnoremap <F9> :NERDTreeToggle<cr>
nnoremap <F8> :TagbarToggle<cr>
nnoremap <F2> :GundoToggle<CR>
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>

" The Silver Searcher
" http://robots.thoughtbot.com/faster-grepping-in-vim
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"Ctrl-P - see gvimrc for remappings
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'rwa'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules)$',
  \ 'file': '\v\.(exe|so|dll|jpg|gif|png)$',
  \ }

"Change emmet expansion key to command + e
let g:user_emmet_expandabbr_key = '<D-e>'
let g:user_emmet_next_key = '<C-f>'

" VimWiki
let g:vimwiki_menu=''
let g:vimwiki_ext2syntax = {}
nnoremap <leader>tt <Plug>VimwikiToggleListItem

"EasyMotion
let g:EasyMotion_leader_key = ',,'

"Syntastic
let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': ['html', 'javascript', 'php'] }

"NerdTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1
let NERDTreeIgnore=['.git[[dir]]', 'node_modules', '\.DS_Store']

"ChangeInside
nnoremap <silent> <Leader>c :ChangeInsideSurrounding<CR>
nnoremap <silent> <Leader>C :ChangeAroundSurrounding<CR>

"Ultisnips
let g:UltiSnipsEditSplit="vertical"

"-----------------------------------------------------------------------------
" MACHINE SPECIFIC SETTINGS
"-----------------------------------------------------------------------------

if filereadable(glob("$HOME/.vimrc.local"))
  source $HOME/.vimrc.local
endif
