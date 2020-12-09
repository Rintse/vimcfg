" FZF (Fuzzy file finder) configuration 


" ======= START Configuration =========

let g:fzf_layout = { 'window': { 'width': 0.6, 'height': 0.35 } }

" ======= END Configuration ===========


" ======= START Keybinds ==============

let g:fzf_action = { 'ctrl-s': 'vsplit' }

nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>rf :Rg<CR>
nnoremap <silent> <Leader>hf :Files ~<CR> 
nnoremap <silent> <Leader>rhf :Rg ~<CR> 

" ======= START Keybinds ==============
