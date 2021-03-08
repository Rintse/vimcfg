" Coc configuration


" ======= START Configuration =========

" ======= END Configuration ===========

" ======== BEGIN keybinds =============
"
" <Tab>: accept coc suggestions
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-Y>" : "\<Tab>"
" Prevent enter from completing with the pum open
inoremap <silent><expr> <CR> pumvisible() ? "\<C-p><CR>" : "\<CR>"
" Restart coc
nnoremap <silent> <Leader>cr :CocRestart<CR> 

" Accept hint
nmap <leader>a <Plug>(coc-codeaction-selected)<CR>

" Rename variable 
nmap <silent> <Leader>rn <Plug>(coc-rename)

" Language server gotos
nmap <silent> <Leader>gi <Plug>(coc-implementation)
nmap <silent> <Leader>vgi :vsplit<CR><Plug>(coc-implementation)

nmap <silent> <Leader>gd <Plug>(coc-definition)
nmap <silent> <Leader>vgd :vsplit<CR><Plug>(coc-definition)

nmap <silent> <Leader>gt <Plug>(coc-type-definition)
nmap <silent> <Leader>vgt :vsplit<CR><Plug>(coc-type-definition)

nmap <silent> <Leader>gr <Plug>(coc-references)

" ======== END keybinds ===============
