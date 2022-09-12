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
From the command line - I have this bound to a function called
`nvim-packersync`:
```
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

Or within `nvim`, after you get past all the error messages about things not
existing:
```
:PackerSync
```
