set autoindent
set sw=4 sts=4

"set sw=2 sts=2
set expandtab

set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

colorscheme desert

syntax on

" If i see 'Entering Ex mode. Type "visual" to go to Normal mode.' one more
" time I think I will lose it:
map Q <ESC>

" remove trailing whitespace on save:
autocmd BufWritePre * :call setline(1, map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal g`\"" |
\ endif
augroup END
