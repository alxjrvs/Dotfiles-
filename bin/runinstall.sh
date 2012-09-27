#1/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -so ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

cd ~/.vim/bundle


git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/tpope/vim-rails.git
git clone https://github.com/benmills/vimux.git
git clone https://github.com/Lokaltog/vim-powerline.git
git clone git://github.com/wgibbs/vim-irblack.git
git clone git://github.com/kml/vim-irblack-plus.git
git clone https://github.com/Townk/vim-autoclose
git clone https://github.com/skalnik/vim-vroom
git clone https://github.com/benmills/vimux

#Snipmate dependencies
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/honza/snipmate-snippets.git
