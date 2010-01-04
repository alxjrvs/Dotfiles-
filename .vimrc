syn on
set nocompatible "don't need to keep compatibility with Vi
set ruler
set wrap
set hidden      "improve history and buffer
set history=1000

set tabstop=4 "tabs settings
set softtabstop=4 
set shiftwidth=4 
set expandtab 
set smarttab

"Key Mappings I figured out with the help of Mr. Internet
imap ii <esc>
map ; :
noremap ;; ;

"For the Markdown Text
 augroup mkd

  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;

 augroup END

