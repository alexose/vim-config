# My vim configuration

It's nothing special, really.  But it does have some useful things:

+ CtrlP
+ LightLine
+ Syntax highlighting using Syntastic
+ EasyAlign (Enter in insert mode)
+ Multiple Cursors (Ctrl+n)

As well as a few customizations:

+ Remove trailing whitespace automatically
+ Various random helper functions

To install:

    git clone git@github.com:alexose/vim-config.git
    mv vim-config .vim
    ln -s .vim/.vimrc
    vim +BundleInstall +qall

And, optionally:

    #  JSHint for Syntactic.  Requires NPM
    sudo npm -g jshint
