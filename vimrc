" Pathogen
execute pathogen#infect()

" Readability
syntax on

set relativenumber

set colorcolumn=81
highlight ColorColumn ctermbg=6

" Whitespace
fun! <SID>StripTrailingWhitespace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespace()

" Indentation
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set shiftround

" Status line
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

" Completion
set wildignore=*/bower_components/*,*/node_modules/*,*/output/*,*/target/*,*/vendor/*,*/build/*,*/Cargo.lock,*.pyc
set wildmenu
setglobal complete-=i

" Rewrapping
set nojoinspaces
set comments+=:--

" Key bindings
nnoremap <space> viw

" Fortran
let fortran_free_source=1

" TypeScript
let g:typescript_indent_disable=1

" Haskell
iabbrev hiCA import Control.Applicative
iabbrev hiCM import Control.Monad
iabbrev hiDE import Data.Either
iabbrev hiDF import Data.Foldable
iabbrev hiDM import Data.Maybe
iabbrev hiDS import Data.Semigroup
