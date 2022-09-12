My Neovim configuration
=======================

Want to use this config? Go ahead!

## Step 1: Get the Config
On Linux/macOS
```
git clone https://github.com/renzmann/config-nvim ~/.config/nvim
```

On Windows (Powershell)
```
git clone https://github.com/renzmann/config-nvim $Env:LOCALAPPDATA\nvim
```

On Windows (CMD)
```
git clone https://github.com/renzmann/config-nvim %LOCALAPPDATA%\nvim
```

## Step 2: Get all the plugins

Packages are maintained as [git subtrees](https://man.archlinux.org/man/git-subtree.1).  Each package
can be updated via e.g. `git subtree -P pack/<name>/start/<package> <repo> <branch>`.
