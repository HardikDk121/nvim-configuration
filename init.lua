require("neovim-config")
print("hello world");

vim.opt.termguicolors = true

vim.lsp.enable('lua_ls')
vim.lsp.config('*', {
  on_attach = function(client, bufnr)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr })
    -- Add more keybindings as needed
  end,
})

