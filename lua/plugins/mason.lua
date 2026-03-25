local M = {
   'williamboman/mason.nvim',
   dependencies = {
      'williamboman/mason-lspconfig.nvim',
   },
}

M.servers = {
   "lua_ls",
   "clangd",
   "rust_analyzer",
}

function M.config()
   require("mason").setup()
   require("mason-lspconfig").setup({
      ensure_installed = M.servers,
      automatic_installation = true,
   })

   for _, server in ipairs(M.servers) do
      vim.lsp.config(server, {})
      vim.lsp.enable(server)
   end

   vim.diagnostic.config({ virtual_text = true })
end

return M
