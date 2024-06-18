nvim install
==

**General Dependencies**

xclip must be installed which neovim will use as provider for system-clipboard access.
Otherwise you won't be able to copy from neovim to other apps.

**Checkout**

Activate nvim configuration just by checking out this repo:
    
    cd ~/.config
    mv nvim nvim.old #save your old settings
    git clone https://github.com/knoxx666/nvim
    
**Ubuntu**
    
    sudo snap install nvim
    sudo apt install xclip

**RHEL7/8/9**
    
    https://snapcraft.io/install/nvim/rhel
    sudo yum install xclip
    
