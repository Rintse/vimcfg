" Configure okular interface
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--noraise --unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'

" Start backwards search server
if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

" Don't show underfull hbox warnings
let g:vimtex_quickfix_ignore_filters = [
          \ 'Underfull \\hbox' ]

