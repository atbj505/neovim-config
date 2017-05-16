let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#auto_complete_delay = 50

" Tab键切换
imap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
imap <expr><BS> deoplete#smart_close_popup()."\<C-h>"
set completeopt-=preview
