execute pathogen#infect()
" gruvbox community edition
colorscheme gruvbox
set background=dark
syntax on
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
"autocmds get processed when the specified events occur for the specified file name patterns. Here we just set the tab values for the current buffer to the desired value in the event of reading or creating a file with .htm .html .css or .js extensions.
autocmd BufRead,BufNewFile *.htm,*.html,*.css,*.js setlocal tabstop=2 shiftwidth=2 softtabstop=2

"set the tab size for tsv files to 10.
autocmd BufRead,BufNewFile *.tsv setlocal tabstop=10 shiftwidth=10 softtabstop=10 noexpandtab

"set spell check on for markdown and text files
autocmd BufRead,BufNewFile *.md,*.txt setlocal spell breakindent

"set the tex files to wrap and check spelling
autocmd BufRead,BufNewFile *.tex setlocal breakindent number spell
set ruler

" Disable parentheses matching 
set noshowmatch
