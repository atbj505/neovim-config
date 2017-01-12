autocmd! BufEnter,BufWritePost * if exists("b:NERDTree") | Neomake | endif
let g:neomake_serialize = 1
let g:neomake_serialize_abort_on_error = 1

" Html
let g:neomake_html_enabled_makers = ['htmlhint']

" JavaScript
let g:neomake_javascript_enabled_makers = ['eslint_d']

" JSON
let g:neomake_json_enabled_makers = ['jsonlint']

" CSS
let g:neomake_css_enabled_makers = ['csslint']
