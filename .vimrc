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
autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&g spell spelllang=en_us nu! 
augroup END
map <leader>p :Mm<CR>

"Wrapping Words

set wrap
set lbr

let mapleader = " "

" edit vimrc in a virtical split
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr> 
"" open new v split and switch to it
nnoremap <leader>w <C-w>v<C-w>l 

let g:vimroom_background = "black"
let g:vimroom_navigational_key = 1

" Lets me use Vim Markdown Preview in linux. Hooray!
"
let g:VMPhtmlreader = 'xdg-open' 
