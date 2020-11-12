" Coc configuration


" ======= START Configuration =========

let g:fzf_layout = { 'window': { 'width': 0.5, 'height': 0.3 } }

" ======= END Configuration ===========


" ======== BEGIN keybinds =============
"
" <Tab>: accept coc suggestions
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-Y>" : "\<Tab>"

" Language server gotos
nmap <silent> <Leader>gd <Plug>(coc-definition)
nmap <silent> <Leader>gt <Plug>(coc-type-definition)
nmap <silent> <Leader>gi <Plug>(coc-implementation)
nmap <silent> <Leader>gr <Plug>(coc-references)

" ======== END keybinds ===============
