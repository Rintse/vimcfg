" Coc configuration


" ======= START Configuration =========

" ======= END Configuration ===========


" ======== BEGIN keybinds =============
"
" <Tab>: accept coc suggestions
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-Y>" : "\<Tab>"
" Prevent enter from completing with the pum open
inoremap <silent><expr> <CR> pumvisible() ? "\<C-p><CR>" : "\<CR>"

" Language server gotos
nmap <silent> <Leader>gd <Plug>(coc-definition)
nmap <silent> <Leader>gt <Plug>(coc-type-definition)
nmap <silent> <Leader>gi <Plug>(coc-implementation)
nmap <silent> <Leader>gr <Plug>(coc-references)

" ======== END keybinds ===============
