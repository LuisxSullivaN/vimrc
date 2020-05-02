let g:lightline = {
\ 'colorscheme': 'nord',
\ 'active': {
\   'right': [ [ 'lineinfo' ],
\              [ 'percent' ],
\              [ 'cocstatus', 'fileformat', 'fileencoding', 'filetype' ] ]
\ },
\ 'component_function': {
\   'filetype': 'MyFiletype',
\   'fileformat': 'MyFileformat',
\   'cocstatus': 'coc#status',
\ },
\ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction
