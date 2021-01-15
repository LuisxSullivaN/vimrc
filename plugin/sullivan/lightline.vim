let g:lightline = {
\ 'colorscheme': 'material_vim',
\ 'active': {
\   'left': [ [ 'mode' ],
\             [ 'gitbranch','filename', 'readonly' ] ],
\   'right': [ [ 'lineinfo' ],
\              [ 'percent' ],
\              [ 'cocstatus', 'fileformat', 'fileencoding', 'filetype' ] ]
\ },
\ 'tabline': {
\   'left': [ ['buffers'] ],
\   'right': [ ['close'] ]
\ },
\ 'component_expand': {
\   'buffers': 'lightline#bufferline#buffers'
\ },
\ 'component_type': {
\   'buffers': 'tabsel'
\ },
\ 'component_function': {
\   'filetype': 'MyFiletype',
\   'fileformat': 'MyFileformat',
\   'cocstatus': 'coc#status',
\   'gitbranch': 'gitbranch#name'
\ },
\}

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

