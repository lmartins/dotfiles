
"------------------------------------------------------------------------------
" FILETYPE SETTINGS
"------------------------------------------------------------------------------

if has("autocmd")
    au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
    au BufRead,BufNewFile *.txt,*.text set filetype=markdown
    au BufRead,BufNewFile *.scss set ft=scss.css
    " au FileType html,xhtml,css,scss,ruby,eruby,liquid,pml,yaml,php,coffee,vim setlocal ts=2 sts=2 sw=2 expandtab
    au FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
    au FileType css,scss,sass setlocal iskeyword+=-
    au FileType markdown setlocal spell

	" Use emmet only for html and css files
	" let g:user_emmet_install_global = 0
	" au FileType html,twig,css,scss EmmetInstall
endif

"Easy filetype switching
nnoremap _md :set ft=markdown<CR>
nnoremap _hh :set ft=html<CR>
nnoremap _js :set ft=javascript<CR>
nnoremap _jq :set ft=javascript syntax=jQuery<CR>
nnoremap _pp :set ft=php<CR>
