
" Vundle Setup
" Force vundle to see ftdetects
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


"Let vundle update itself
Plugin 'gmarik/Vundle.vim'





"Plugins
Plugin 'briandoll/change-inside-surroundings.vim'
" Plugin 'wincent/Command-T'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'gcmt/wildfire.vim'
Plugin 'godlygeek/tabular'
Plugin 'gregsexton/MatchTag'
Plugin 'lokaltog/vim-easymotion'
Plugin 'haya14busa/vim-easyoperator-line'
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
" Plugin 'vim-scripts/delimitMate.vim'
Plugin 'vim-scripts/matchit.zip'
" Plugin 'vim-scripts/vimwiki'
" Plugin 'bling/vim-airline'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'henrik/vim-qargs'
Plugin 'xolox/vim-colorscheme-switcher'
" Plugin 'Taverius/vim-colorscheme-manager'
Plugin 'majutsushi/tagbar'
Plugin 'rizzatti/dash.vim'
" Plugin 'danro/rename.vim'
Plugin 'lfilho/cosco.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-fugitive'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'justinmk/vim-gtfo'
Plugin 'mhinz/vim-startify'
" Plugin 'nelstrom/vim-visual-star-search'
Plugin 'moll/vim-bbye'
Bundle 'mbadran/headlights'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'sickill/vim-pasta'
Plugin 'ap/vim-css-color'
Plugin 'zefei/vim-colortuner'


" Syntax
Plugin 'othree/html5.vim'
Plugin 'evidens/vim-twig'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'nono/jquery.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'StanAngeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'mustache/vim-mustache-handlebars'
"Plugin 'nathanlong/vim-markdown'


" Colorschemes
"Plugin 'nathanlong/vim-colors-solarized'
Plugin 'nathanlong/vim-colors-tomorrow'
" Plugin 'nathanlong/vim-colors-writer'
Plugin 'flazz/vim-colorschemes'
Plugin 'chriskempson/base16-vim'
Plugin 'atelierbram/vim-colors_atelier-schemes'
Plugin 'stulzer/heroku-colorscheme'


" Plugins that don't play well with the terminal
if has("gui_running")
    Plugin 'SirVer/ultisnips'
endif


call vundle#end()


" FIX: PluginUpdate => git pull: git-sh-setup: No such file or directory in MacVim (OK in non-GUI version of Vim)
if has("gui_macvim")
    set shell=/bin/bash\ -l
endif


