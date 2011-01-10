syn on
set t_Co=256
let g:zenburn_high_Contrast=1
colorscheme zenburn
set nocompatible "don't need to keep compatibility with Vi
set ruler
set wrap
set hidden      "improve history and buffer
set history=1000
set number
filetype plugin on  

let g:pydiction_location = '/home/alxjrvs/.vim/after/ftplugin/pydiction/complete-dict'
let g:pydiction_menu_height = 20


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


