local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
  return
end

local on_attach = function(client, bufnr)
  local bufmap = function(keys, func)
    vim.keymap.set('n', keys, func, { buffer = bufnr })
  end

  bufmap('<leader>r', vim.lsp.buf.rename)
  bufmap('<leader>a', vim.lsp.buf.code_action)

  bufmap('gd', vim.lsp.buf.defnition)
  bufmap('gD', vim.lsp.buf.declaration)
  bufmap('gI', vim.lsp.bif.implementation)
  bufmap('<leader>D', vim.lsp.buf.type_definition)

  bufmap('K', vim.lsp.buf.hover)

  -- format on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
    })
  end
end

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "eslint",
    "lua_ls",
    "tailwindcss",
    "cssls",
    "tsserver"
  }
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

nvim_lsp.lua_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- TypeScript
nvim_lsp.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- CSS
nvim_lsp.cssls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Tailwind
nvim_lsp.tailwindcss.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

nvim_lsp.eslint.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

nvim_lsp.emmet_ls.setup({
  on_attach = on_attach,
  filetypes = {
    "css", "ejs", "eruby", "html", "javascript", "javascriptreact", "less", "liquid", "sass", "scss", "svelte", "pug",
    "typescriptreact", "vue"
  }
})
