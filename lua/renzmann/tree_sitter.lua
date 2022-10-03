local configs = require("nvim-treesitter.configs")
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

configs.setup {
   -- ensure_installed = { "c", "lua", "rust", "python", "c_sharp", "markdown", "org" },
   highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "org" },
   },
}

parser_config.python = {
  install_info = {
    url = "~/parsers/tree-sitter-python", -- local path or git repo
    files = {"src/parser.c", "src/scanner.cc"},
    -- optional entries:
    branch = "main", -- default branch in case of git repo if different from master
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
  },
  filetype = "python", -- if filetype does not match the parser name
}

-- require('orgmode').setup_ts_grammar()
-- require("orgmode").setup({})
