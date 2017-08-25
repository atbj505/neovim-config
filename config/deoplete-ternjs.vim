let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
\]
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:deoplete#sources#ternjs#tern_bin = '/path/to/tern_bin'
let g:deoplete#sources#ternjs#timeout = 1
