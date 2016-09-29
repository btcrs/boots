" Create window splits 
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

"key to insert mode with paste using Space + i 
map <Leader>i :set paste<CR>i
"Leave paste mode on exit
au InsertLeave * set nopaste

map <Leader>w :update<CR>
map <Leader>q :qall<CR>
