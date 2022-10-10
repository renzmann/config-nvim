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
