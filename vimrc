syntax on

set relativenumber

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
