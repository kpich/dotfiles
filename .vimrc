set autoindent
set sw=4 sts=4

"set sw=2 sts=2
set expandtab

set hlsearch

colorscheme desert

syntax on

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal g`\"" |
\ endif
augroup END
