set noantialias
set encoding=utf-8
set list listchars=tab:»·,trail:·

set background=dark
colorscheme solarized
hi Normal ctermbg=NONE

let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=236

highlight RedundantSpaces ctermbg=yellow guibg=yellow
match RedundantSpaces /\s\+$\| \+ze\t/

" Highlight current line number
hi CursorLineNr guifg=#050505
