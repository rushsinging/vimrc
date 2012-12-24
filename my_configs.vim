set t_Co=256

let g:solarized_termcolors=256
let g:solarized_visibility="high"
let g:solarized_contrast="high"
colorscheme solarized 
call togglebg#map("<F5>")

set foldcolumn=0

set nu
call pathogen#infect("~/.vim_runtime/sources_plugins")
