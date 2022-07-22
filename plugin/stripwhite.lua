local strip_trailing_whitespace = function()
   -- `nil` is "falsey", so if it's unset, `if not vim.b.strip_whitespace` has
   -- the opposite of the intended effect. Hence, `== false`
   if vim.b.strip_whitespace == false then
      return
   else
      vim.cmd([[%s/\s\+$//e]])
   end
end

vim.api.nvim_create_autocmd(
   { "BufWritePre" },
   { pattern = "*", callback = strip_trailing_whitespace }
)
