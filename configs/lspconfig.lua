local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "intelephense", "cssls", "tsserver", "emmet_ls", "tailwindcss" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

lspconfig.svelte.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    svelte = {
      plugin = {
        svelte = {
          format = {
            enable = true,
          },
        },
      },
    },
  },
}
