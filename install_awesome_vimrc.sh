cd 
rm .vimrc
touch .vimrc

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

rm ~/.vim_runtime/y_configs.vim
touch ~/.vim_runtime/my_configs.vim
try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo 'call pathogen#infect("~/.vim_runtime/sources_plugins")

set foldcolumn=0

set nu

set t_Co=16
colorscheme solarized 
call togglebg#map("<F6>")

map <F5> :!python %<cr>' >>~/.vim_runtime/my_configs.vim


cd
cd ~/.vim_runtime/
git submodule init 
git submodule update
cd ~/.vim_runtime/sources_plugins/jedi/
git submodule init 
git submodule update
cd
sh ~/.vim_runtime/tools/gnome-terminal-colors-solarized/set_dark.sh
rm ~/.dircolors
ln -s ~/.vim_runtime/tools/dircolors-solarized/dircolors.ansi-dark ~/.dircolors
echo 'dircolors ~/.dircolors >> /tmp/dircolors' >> ~/.bashrc
cd

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
