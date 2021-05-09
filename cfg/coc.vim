" Coc configuration

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

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
nnoremap <leader>a <Plug>(coc-codeaction-selected)<CR>

" Rename variable 
nnoremap <silent> <Leader>rn <Plug>(coc-rename)

" Language server gotos
nnoremap <silent> <Leader>gi <Plug>(coc-implementation)
nnoremap <silent> <Leader>vgi :call CocAction('jumpImplementation', 'vsplit')<CR>

nnoremap <silent> <Leader>gd <Plug>(coc-definition)
nnoremap <silent> <Leader>vgt :call CocAction('jumpDefinition', 'vsplit')<CR>

nnoremap <silent> <Leader>gt <Plug>(coc-type-definition)
nnoremap <silent> <Leader>vgt :call CocAction('jumpTypeDefinition', 'vsplit')<CR>

nnoremap <silent> <Leader>i :call <SID>show_documentation()<CR>

nnoremap <silent> <Leader>gr <Plug>(coc-references)

" ======== END keybinds ===============
