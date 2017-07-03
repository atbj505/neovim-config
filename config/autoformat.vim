" JavaScript
" let g:formatdef_javascript = '"js-beautify -s 2 -j -a -k -X"'
" let g:formatters_javascript = ['javascript']

let g:formatdef_javascript = '"eslint_d --fix"'
let g:formatters_javascript = ['eslint_d']

" Html
let g:formatdef_html = '"js-beautify --type html -s 2"'
let g:formatters_html = ['html']

" CSS
let g:formatdef_css = '"js-beautify --type css -s 2"'
let g:formatters_css = ['css']
