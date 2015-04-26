

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
set clipboard=unnamed     "Give yank commands access to system clipboard



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




"More useful command-line completion
set wildmode=list:longest
set wildmenu

"In many terminal emulators the mouse works just fine, so have at it.
set mouse=a


" Automatically save changes before switching buffer with some
" commands, like :cnfile.
set autowrite





"-----------------------------------------------------------------------------
" INTERFACE
"-----------------------------------------------------------------------------
set autoread              "reload files when changed on disk
set linespace=4           "Slightly higher linespace
set relativenumber        "Relative numbers make for easy movement
set number 		            "Always shows line numbers
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
" set winminheight=0
" set winminwidth=0


"Toggle spellcheck
nnoremap <silent> <leader>s :setlocal spell!<CR>

"Save with sudo
cnoremap sudow w !sudo tee % >/dev/null


" Remove trailing white-space on saving
autocmd BufWritePre * :%s/\s\+$//e




"-----------------------------------------------------------------------------
" TEXT AND TAB SETTINGS
"-----------------------------------------------------------------------------

set tabstop=4              "Tab stuff
set shiftwidth=4
set softtabstop=0
set shiftround
set noexpandtab
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

