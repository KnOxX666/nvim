nvim install
==

**Checkout**

Activate nvim configuration just by checking out this repo:
    
    cd ~/.config
    mv nvim nvim.old #save your old settings
    git clone https://github.com/knoxx666/nvim
    
**Ubuntu**
    
    sudo snap install nvim
    apt install fzf ripgrep bat

**RHEL7/8/9**
    
    https://snapcraft.io/install/nvim/rhel

Install command-line-tools 'fzf' 'ripgrep' 'bat' via downloading from github (as binary release).
Put them to ~/bin and expand your $PATH variable to that directory (.e.g. in your ~/.zshrc):

    export PATH="/snap/bin:<path_to_your_bin>:$PATH"
