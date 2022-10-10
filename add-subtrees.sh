#!/usr/bin/env bash

packages="
start/wbthomason/packer.nvim/master
start/kylechui/nvim-surround/main
start/tpope/vim-commentary/master
start/tpope/vim-fugitive/master
start/williamboman/nvim-lsp-installer/main
start/neovim/nvim-lspconfig/master
start/hrsh7th/cmp-nvim-lsp/main
start/hrsh7th/cmp-buffer/main
start/hrsh7th/cmp-path/main
start/hrsh7th/vim-vsnip/master
start/hrsh7th/cmp-vsnip/main
start/hrsh7th/nvim-cmp/main
start/romainl/Apprentice/master
start/EdenEast/nightfox.nvim/main
start/arcticicestudio/nord-vim/main
start/nvim-treesitter/nvim-treesitter/master
start/RRethy/vim-illuminate/master
start/norcalli/nvim-colorizer.lua/master
start/kyazdani42/nvim-web-devicons/master
start/nvim-lualine/lualine.nvim/master
start/nvim-lua/plenary.nvim/master
start/nvim-telescope/telescope.nvim/master
start/JuliaEditorSupport/julia-vim/master
opt/iamcco/markdown-preview.nvim/master
opt/habamax/vim-godot/master
start/ckipp01/stylua-nvim/main
start/nvim-orgmode/orgmode/master
start/airblade/vim-gitgutter/master
start/rhysd/git-messenger.vim/master
start/rbong/vim-flog/master
start/untitled-ai/jupyter_ascending.vim/master
"

add-package() {
	local IFS=/
	local components
	read -ra components <<< "${1}"
	local startopt="${components[0]}"
	local namespace="${components[1]}"
	local package="${components[2]}"
	local branch="${components[3]}"
	git subtree add -P "pack/${namespace}/${startopt}/${package}" git@github.com:${namespace}/${package} ${branch} --squash
}

for p in ${packages}; do
	add-package ${p}
done


# git@github.com:kylechui/nvim-surround
# git@github.com:tpope/vim-commentary
# git@github.com:tpope/vim-fugitive
# git@github.com:williamboman/nvim-lsp-installer
# git@github.com:neovim/nvim-lspconfig
# git@github.com:hrsh7th/cmp-nvim-lsp
# git@github.com:hrsh7th/cmp-buffer
# git@github.com:hrsh7th/cmp-path
# git@github.com:hrsh7th/vim-vsnip
# git@github.com:hrsh7th/cmp-vsnip
# git@github.com:hrsh7th/nvim-cmp
# git@github.com:romainl/Apprentice
# git@github.com:EdenEast/nightfox.nvim
# git@github.com:arcticicestudio/nord-vim
# git@github.com:nvim-treesitter/nvim-treesitter
# git@github.com:RRethy/vim-illuminate
# git@github.com:norcalli/nvim-colorizer.lua
# git@github.com:kyazdani42/nvim-web-devicons
# git@github.com:nvim-lualine/lualine.nvim
# git@github.com:nvim-lua/plenary.nvim
# git@github.com:nvim-telescope/telescope.nvim
# git@github.com:JuliaEditorSupport/julia-vim
# git@github.com:iamcco/markdown-preview.nvim
# git@github.com:habamax/vim-godot
# git@github.com:ckipp01/stylua-nvim
# git@github.com:nvim-orgmode/orgmode
# git@github.com:airblade/vim-gitgutter
# git@github.com:rhysd/git-messenger.vim
# git@github.com:rbong/vim-flog
