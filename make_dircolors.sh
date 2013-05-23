if [ -f "~/.vim_runtime/dircolors" ]; then
    rm ~/.vim_runtime/.dircolors
fi 

dircolors ~/.vim_runtime/tools/dircolors-solarized/dircolors.ansi-dark >> ~/.vim_runtime/.dircolors
