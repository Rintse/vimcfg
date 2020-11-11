set nocompatible              " be iMproved, required
filetype plugin indent on

" ==== BEGIN Vunlde =====
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'neoclide/coc.nvim'
Plugin 'vim-airline/vim-airline'
Plugin 'arcticicestudio/nord-vim'
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'

call vundle#end()
filetype plugin indent on
filetype plugin on
" ==== END Vunlde =====

" General editor configuration
source ~/.vim/cfg/editor.vim

" NERDTree configuration
source ~/.vim/cfg/NERDTree.vim

" Airline configuration 
source ~/.vim/cfg/airline.vim

" Coc configuration
source ~/.vim/cfg/coc.vim
