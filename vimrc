syntax on
set number
set t_Co=256
set encoding=utf-8
colorscheme inkpot

" Tabbing
set tabstop=4
set shiftwidth=4

set paste
set backspace=indent,eol,start
set cursorline
set hlsearch

hi CursorLine cterm=NONE ctermbg=234 ctermfg=NONE

set laststatus=2 "show the status line
set statusline=%-10.3n  "buffer number

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

set colorcolumn=125

let g:inkpot_black_background = 1

set visualbell
set expandtab
