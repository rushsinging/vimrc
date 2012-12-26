call pathogen#infect("~/.vim_runtime/sources_plugins")


set foldcolumn=0

set nu

set t_Co=16
colorscheme solarized 
call togglebg#map("<F6>")

map <F5> :!python %<cr>
