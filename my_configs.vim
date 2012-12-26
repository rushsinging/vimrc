call pathogen#infect("~/.vim_runtime/sources_plugins")

set t_Co=256

set foldcolumn=0

set nu

let g:solarized_termcolors=256
let g:solarized_visibility="high"
let g:solarized_contrast="high"
colorscheme solarized 
set background=dark
call togglebg#map("<F6>")

map <F5> :!python %<cr>
