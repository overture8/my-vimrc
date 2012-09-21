My .vimrc config
================

Setup
-----
    
    # Make sure you're at ~
    $ cd ~

    # Get my .vimrc file from github
    $ wget https://raw.github.com/overture8/my-vimrc/master/vimrc && mv vimrc .vimrc
  
    # Setup vundle plugin
    $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

    # Then, **while in vim**, do install plugins using vundle:
    :BundleInstall
