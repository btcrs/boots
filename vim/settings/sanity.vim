" ====== Get Off My Lawn =======

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" ==============================


nnoremap <leader>yw yiww

nnoremap <leader>ow "_diwhp

"make Y consistent with C and D
nnoremap Y y$
function! YRRunAfterMaps()
  nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
endfunction

nnoremap 0 ^
nnoremap ^ 0

nnoremap <leader>. '.

cmap w!! w !sudo tee % >/dev/null
