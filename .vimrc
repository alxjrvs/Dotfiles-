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

  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&g spell spelllang=en_us
    
 augroup END

"Wrapping Words

set wrap
set lbr

"copy whole buffer to clipboard
map <C-c><C-c> gg"*yG``
imap <C-c><C-c> <ESC>gg"*yGgi

" Windows like copy&paste
nmap <C-Insert> "*yy
imap <C-Insert> <ESC>"*yygi
nmap <S-Insert> "*p
imap <S-Insert> <C-R>*

"Vim Spellcheck Bindings 

"setlocal spell spelllang=en_us

