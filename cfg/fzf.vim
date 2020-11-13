" FZF (Fuzzy file finder) configuration 


" ======= START Configuration =========

let g:fzf_layout = { 'window': { 'width': 0.5, 'height': 0.3 } }

" ======= END Configuration ===========



" ======= START Keybinds ==============

let g:fzf_action = { 's': 'vsplit' }
nnoremap <silent> <Leader>fz :FZF<CR>
nnoremap <silent> <Leader>hfz :FZF ~<CR> 

" ======= START Keybinds ==============
