set nocompatible              " be iMproved, required
filetype plugin indent on

" ==== BEGIN Vunlde =====
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'arcticicestudio/nord-vim'
Plugin 'preservim/nerdcommenter'
Plugin 'junegunn/fzf'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'uiiaoo/java-syntax.vim'

Plugin 'neoclide/coc.nvim'
Plugin 'neoclide/coc-python'

call vundle#end()
" ==== END Vunlde =====

" General editor configuration
source ~/.config/nvim/cfg/editor.vim

" NERDTree configuration 
source ~/.config/nvim/cfg/nerdtree.vim

" Airline configuration 
source ~/.config/nvim/cfg/airline.vim

" Coc configuration
source ~/.config/nvim/cfg/coc.vim

" FZF configuration 
source ~/.config/nvim/cfg/fzf.vim
