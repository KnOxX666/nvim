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
    
**C++/Rust Debugging (Ubuntu)**
    
    # Download an available version for your OS and architecture: VS Code extension (https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
    # Unpack it. .vsix is a zip file and you can use unzip to extract the contents.
    # Ensure extension/debugAdapters/bin/OpenDebugAD7 is executable. 
    # In debugging.lua set command-attribute of dap.adapters.cppdbg to absolute path of OpenDebugAD7-executable.
    # Install dotnet-runtime:
    sudo add-apt-repository ppa:dotnet/backports
    sudo apt-get install -y dotnet-runtime-9.0
