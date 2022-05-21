# My vim configuration

It's nothing special, really.  But it does have some useful things:

+ CtrlP
+ LightLine
+ Syntax highlighting using Syntastic
+ EasyAlign (Enter in insert mode)
+ Multiple Cursors (Ctrl+n)

As well as a few customizations:

+ The Silver Searcher backend to CtrlP
+ Remove trailing whitespace automatically
+ Various random helper functions

To install:

    mv ~/.vim ~/.vim-old
    mv ~/.vimrc ~/.vimrc-old
    git clone https://github.com/alexose/vim-config.git
    git clone https://github.com/gmarik/Vundle.vim vim-config/bundle/vundle
    mv vim-config .vim
    ln -s .vim/.vimrc
    vim +BundleInstall +qall

And, optionally:

    #  JSHint for Syntactic.  Requires NPM
    sudo npm -g jshint
