syntax on
set number
colorscheme eclipse 

set cindent
set tabstop=3
set shiftwidth=3

set laststatus=2 "show the status line
set statusline=%-10.3n  "buffer number

map <silent> <leader>2 :diffget 2<CR> :diffupdate<CR>
map <silent> <leader>3 :diffget 3<CR> :diffupdate<CR>
map <silent> <leader>4 :diffget 4<CR> :diffupdate<CR>
