execute pathogen#infect()
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
"autocmds get processed when the specified events occur for the specified file name patterns. Here we just set the tab values for the current buffer to the desired value in the event of reading or creating a file with .htm or .html extension.
autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2

"set the tab values for tsv files to 10.
autocmd BufRead,BufNewFile *.tsv setlocal tabstop=10 shiftwidth=10 softtabstop=10 noexpandtab

autocmd BufRead,BufNewFile *.md setlocal spell

"set the tex files to wrap.
autocmd BufRead,BufNewFile *.tex setlocal breakindent number
set ruler

" Disable parentheses matching depends on system. This way we should address all cases (?)
set noshowmatch
" NoMatchParen " This doesnt work as it belongs to a plugin, which is only loaded _after_ all files are.
" Trying disable MatchParen after loading all plugins
"
function! g:FckThatMatchParen ()
    if exists(":NoMatchParen")
        :NoMatchParen
    endif
endfunction

augroup plugin_initialize
    autocmd!
    autocmd VimEnter * call FckThatMatchParen()
augroup END
