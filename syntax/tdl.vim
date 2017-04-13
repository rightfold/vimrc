if exists("b:current_syntax")
  finish
endif

syntax keyword Statement module type service
syntax keyword Keyword product sum
syntax keyword Type array bool bytes f64 i32 text
syntax region Comment start="/\*" end="\*/"
