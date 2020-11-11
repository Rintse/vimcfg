" Airline configuraiton

" ======== BEGIN Configuration  =======

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1 "Powerline fonts support
let g:airline_symbols.maxlinenr = ' ' "No ugly ln symbol
let g:airline_stl_path_style = 'short' "Shorter pathname

let g:airline_section_warning = '' "Disable YCM warning section
let g:airline#extensions#coc#enabled = 1 "Enable Coc warning section

let airline#extensions#coc#error_symbol = '🗙:'
let airline#extensions#coc#warning_symbol = ':'

" ======== END Configuration ==========
