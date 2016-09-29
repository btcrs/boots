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

" Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"
let g:airline_theme='solarized'

