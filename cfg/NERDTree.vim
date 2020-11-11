" NERDTRee configuration

" Savely gets the selected filename from NERDTree
" Used in airline: nerdtree statusbar shows this
function! GetNERDTreeFileName()
    let name = ""
    if  exists('g:NERDTreeFileNode') &&
    \ has_key(g:NERDTreeFileNode.GetSelected(), 'path')
        let name = g:NERDTreeFileNode.GetSelected().
        \path.getLastPathComponent(0)
    endif
    return name
endfunction

" Sets the current working directory to selection, 
" and updates NERDTree to adopt this new cwd
function! SetCWD()
    if  exists('g:NERDTreeFileNode') &&
    \ has_key(g:NERDTreeFileNode.GetSelected(), 'path')
        let selected = g:NERDTreeFileNode.GetSelected().path
        if !selected.isDirectory
            echo "Not a directory"
        else
            execute "cd" selected.str()
            NERDTreeCWD
        endif
    endif
endfunction


" ======= START Configuration =========
"
"Automatically open with vim, and switch to file
autocmd VimEnter * NERDTree | wincmd p 

" Automatically update the tree upon write to file 
autocmd BufWritePost * NERDTreeRefreshRoot

" Automatically close vim when tree is the only thing open
autocmd bufenter * 
    \if (winnr("$") == 1 && 
    \exists("b:NERDTree") && 
    \b:NERDTree.isTabTree()) 
    \| q | endif

" Shows the file/folder name in statusbar
let NERDTreeStatusline="%{GetNERDTreeFileName()}"

" Custom collapse/expand symbols
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''


" ======== END Configuration ==========


" ======== START Binds ================

nnoremap <Leader>f :NERDTreeFocus<CR>
nnoremap <Leader>cf :NERDTreeClose<CR> 
nnoremap <Leader>rf :NERDTreeRefreshRoot<CR>
nnoremap <Leader>cd :call SetCWD()<CR>

" ======== END Binds ==================
