syn on
set t_Co=256
set nocompatible "don't need to keep compatibility with Vi
set ruler
set wrap
set hidden      "improve history and buffer
set history=1000
set number
:filetype plugin on
colorscheme ir_black
let g:pydiction_location = '~/.vim/after/ftplugin/pydiction/complete-dict'
let g:pydiction_menu_height = 20

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

set list listchars=tab:·\ ,trail:•,nbsp:•

"Key Mappings I figured out with the help of Mr. Internet
""imap ii <esc>
map ; :
noremap ;; ;

imap <C-a> <esc>

"For the Markdown Text
augroup mkd
autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&g spell
spelllang=en_us nu!  
augroup END
map <leader>p :Mm<CR>

"Wrapping Words

set wrap
set lbr

let mapleader = " "
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

edit vimrc in a virtical split
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr> 
"" open new v split and switch to it
nnoremap <leader>w <C-w>v<C-w>l 

let g:vimroom_navigational_key = 1
let g:vimroom_ctermbackground = "bg"
let g:vimroom_guibackground = "black"

"For Snipmate
"au BufNewFile,BufRead *.mkd setlocal filetype=markdown
"autocmd FileType python set ft=python.django " For SnipMate
"autocmd FileType html set ft=htmldjango.html " For SnipMate

:au FocusLost * :wa

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

call pathogen#infect()
hi CursorLine   cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkred
guifg=white
set cursorline


" VIMUX commands
" Prompt for a command to run
map rp :PromptVimTmuxCommand

" Run last command executed by RunVimTmuxCommand
map rl :RunLastVimTmuxCommand

" Inspect runner pane
map ri :InspectVimTmuxRunner

" Close all other tmux panes in current window
map rx :CloseVimTmuxPanes

" Interrupt any command running in the runner pane
map rs :InterruptVimTmuxRunner
