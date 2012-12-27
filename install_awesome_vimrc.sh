cd 
rm .vimrc
touch .vimrc

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

#rm ~/.vim_runtime/y_configs.vim
#touch ~/.vim_runtime/my_configs.vim
#echo 'call pathogen#infect("~/.vim_runtime/sources_plugins")
#
#set foldcolumn=0
#
#set nu
#
#set t_Co=16
#colorscheme solarized 
#call togglebg#map("<F6>")
#
#map <F5> :!python %<cr>' >>~/.vim_runtime/my_configs.vim


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

echo
echo 'If you want to use the solarized colors in the terminal, please run:
    sh ~/.vim_runtime/make_dircolors.sh 
and add source ~/.vim_runtime/.dircolors to you bashrc
and do not forget to use ls --color=auto :)'
echo

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
