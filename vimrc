execute pathogen#infect()

syntax on

set relativenumber

set colorcolumn=81
highlight ColorColumn ctermbg=6

fun! <SID>StripTrailingWhitespace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespace()

set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
