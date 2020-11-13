" Vim editor changes


" Write-and-closes current buffer, and switches to the previous
function! SaveCloseBuffer()
    let cur_buf = (winbufnr(winnr()))
    if bufname(cur_buf) == ""
        echo "File has no name: can't quick quit"
        return
    endif
    
    let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val)')
    let buffers = map(buffers, 'bufname(v:val)')
    let windows = map(range(1, winnr('$')), 'bufname(winbufnr(v:val))')
    let windows = filter(windows, {idx, n -> stridx(n, "NERD_tree") == -1})
    " Available buffers to switch to (not already open) 
    let avail = filter(buffers, {idx, n -> index(windows, n) == -1})

    if(len(avail) > 0)
        execute ":w \| b " . avail[-1]  ." \| bd" . cur_buf
    else
        execute ":w \| bd"
    endif
endfunction

" Moves the current window to the left
function! MoveWinLeft()
    execute "normal" winnr()-1 "\<C-w>x" "\<C-w>h"
endfunction


" ======== BEGIN General ==============

syntax on
colorscheme nord

set laststatus=2 "Always keep statusbar
set cmdheight=2 "More space for coc messages
set updatetime=300 "Shorten updatetime for more coc responsiveness

" Better tab completion for filenames
set wildmode=longest,list
set wildmenu

" Relative linenumbers except current line 
set number
set relativenumber

" Hidden buffers for easy switching
set hidden

" Set tab=4 spaces
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Keep line history
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Keep undo history
set undofile
set undodir=~/.config/nvim/undodir

" Prevent swp files from accidentally getting gitted
:set directory=~/.config/nvim/swapfiles/

" No bell plz
set belloff=all

" Don't highligh searches by default
set nohls

" Whitespace after comment
let g:NERDSpaceDelims = 1

" ======== END General ================


" ======== BEGIN keybinds =============

nnoremap <Space> <Nop>
let mapleader = " "

" I hate f1
nmap <F1> <Nop>
imap <F1> <Nop>

" Place cursor in between braces and such when two are typed
inoremap <> <><Left>
inoremap () ()<Left>
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>

" Line objects
xnoremap il g_o^
onoremap il :normal vil<CR>
xnoremap al $o^
onoremap al :normal val<CR>

" C specific function open
inoremap {}<CR> {<CR><CR>}<Up><Tab>

" Comment selection
map <Leader>/ <plug>NERDCommenterToggle

" Switch between windows
nnoremap <Leader><Left> <C-w>h
nnoremap <Leader><Right> <C-w>l
" nnoremap <Leader>1 :call ToWindow(1)

" (un)indent selection
vmap <Tab> >gv
vmap <S-Tab> <gv

" Navigate errors 
nnoremap <Leader>ne :call CocAction('diagnosticNext')<CR>
nnoremap <Leader>pe :call CocAction('diagnosticPrevious')<CR>

" Delete into the black hole register
nnoremap <Del> "_x

" To end of line, excl newline
vnoremap ! g_

" Saves and closes current buffer
nnoremap <silent> <Leader>q :call SaveCloseBuffer()<CR>

" search for the current word/selection, while keeping cursor
nnoremap <Leader>d *N
vnoremap <Leader>d *N

" Convenient buffer stuff
nnoremap <Leader>b :ls<CR>:b<Space>
nnoremap <Leader>vb :ls<CR>:vertical sb<Space>
nnoremap <Leader>bd :ls<CR>:bd<Space>
nnoremap <Leader>sb :vertical sb#<CR>

" Window management
nnoremap <silent> <Leader>m<Left> :call MoveWinLeft()<CR>
nnoremap <silent> <Leader>m<Right> <C-w>x <C-w>l
nnoremap <Leader>- <C-w><<CR>
nnoremap <Leader>= <C-w>><CR>

" Toggle search highlighting 
:nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" Search for selected text
vnoremap <silent> * :<C-U>
    \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
    \gvy/<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
    \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
    \gVzv:call setreg('"', old_reg, old_regtype)<CR>N

" ======== END keybinds ===============
