local lsp = require('lsp-zero')

lsp.preset('recommended')

-- lsp.ensure_installed({
  -- 'tsserver',
  -- 'eslint',
  -- 'rust_analyzer',
-- })

lsp.setup()

local luasnip = require("luasnip")
local cmp = require("cmp")

cmp.setup({
  mapping = {
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        local entry = cmp.get_selected_entry()
        if not entry then
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
        else
          cmp.confirm()
        end
      else
        fallback()
      end
    end, { "i" }),
    ['<C-y>'] = cmp.mapping(function(fallback)
      cmp.mapping.abort()
      local copilot_keys = vim.fn['copilot#Accept']()
      if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif copilot_keys ~= '' and type(copilot_keys) == 'string' then
        vim.api.nvim_feedkeys(copilot_keys, 'i', true)
      else
        fallback()
      end
    end, { 'i', 's', }),
  },
})

local cmp_nvim_lsp = require "cmp_nvim_lsp"

require("lspconfig").clangd.setup {
  on_attach = on_attach,
  capabilities = cmp_nvim_lsp.default_capabilities(),
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
}

local function setup_lsp_diags()
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
      virtual_text = true,
      signs = true,
      update_in_insert = true,
      underline = true,
    }
  )
end

setup_lsp_diags()


