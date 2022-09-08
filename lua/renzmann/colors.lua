vim.o.termguicolors = true
vim.g.airline_theme = "base16_nord"

require("nightfox").setup({
   options = {
      styles = {
         comments = "italic",
         functions = "italic,bold",
      },
   },
})

require("colorizer").setup({
   "python",
   "markdown",
   "css",
   "javascript",
   "vim",
   "lua",
   html = {
      mode = "foreground",
   },
})

require('orgmode').setup_ts_grammar()

require("nvim-treesitter.configs").setup({
   -- ensure_installed = { "c", "lua", "rust", "python", "c_sharp", "markdown", "org" },
   highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "org" },
   },
})

require("orgmode").setup({})

vim.cmd("colorscheme nordfox")
