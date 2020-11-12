" FZF (Fuzzy file finder) configuration 


" ======= START Configuration =========

let g:fzf_layout = { 'window': { 'width': 0.5, 'height': 0.3 } }

" ======= END Configuration ===========



" ======= START Keybinds ==============

let g:fzf_action = { 's': 'vsplit' }
nnoremap <Leader>fz :FZF<CR>
nnoremap <Leader> hfz :FZF ~<CR> 

" ======= START Keybinds ==============
