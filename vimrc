filetype plugin indent on

syntax on
set number
set t_Co=256
set encoding=utf-8
colorscheme inkpot 

set smartindent
set backspace=indent,eol,start
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set hlsearch

hi CursorLine cterm=NONE ctermbg=234 ctermfg=NONE

set laststatus=2 "show the status line
set statusline=%-10.3n  "buffer number

nnoremap j gj
nnoremap k gk

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

set colorcolumn=125

map <silent> <leader>2 :diffget 2<CR> :diffupdate<CR>
map <silent> <leader>3 :diffget 3<CR> :diffupdate<CR>
map <silent> <leader>4 :diffget 4<CR> :diffupdate<CR>
