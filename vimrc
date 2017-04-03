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

set laststatus=2

set statusline=
set statusline+=%1*\ %{''.(&fenc!=''?&fenc:&enc).''}\ " Encoding
set statusline+=%1*%{&ff}\                            " File format
set statusline+=%1*%y\                                " File type
set statusline+=%2*%<%F\                              " File path
set statusline+=%3*%m%r                               " Modified? Readonly?
set statusline+=%=
set statusline+=%4*%05l/%05L:%05c\                    " Line/total

highlight User1 ctermfg=6
highlight User2 ctermfg=3
highlight User3 ctermfg=1
highlight User4 ctermfg=3
