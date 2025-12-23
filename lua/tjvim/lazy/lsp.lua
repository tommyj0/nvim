return {
  {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "j-hui/fidget.nvim",
  },
  keys = {
    {"<S-K>", "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "Hover Manual" },
    {"<leader>l", "<cmd>lua vim.lsp.buf.format()<CR>", desc = "Format"},
  },

  config = function()
    local cmp = require('cmp')
    local cmp_lsp = require("cmp_nvim_lsp")
    local capabilities = vim.tbl_deep_extend(
      "force",
      {},
      vim.lsp.protocol.make_client_capabilities(),
      cmp_lsp.default_capabilities())

    -- local navic = require("nvim-navic")
    -- require("lspconfig").clangd.setup {
      -- on_attach = function(client, bufnr)
        -- navic.attach(client, bufnr)
      -- end
    -- }
    -- require("fidget").setup({})
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        -- "clangd",
        "pylsp",
        "cmake",
      },
      handlers = {
        function(server_name) -- default handler (optional)
          require("lspconfig")[server_name].setup {
            capabilities = capabilities
          }
        end,

        ["lua_ls"] = function()
          local lspconfig = require("lspconfig").lua_ls.setup {
            capabilities = capabilities,
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim", "it", "describe", "before_each", "after_each" },
                }
              }
            }
          }
        end,
      }
    })

    local cmp_select = { behavior = cmp.SelectBehavior.Select }

    cmp.setup({
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        -- ["<Tab>"] = cmp.mapping.complete(),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
      }, {
        { name = 'buffer' },
      })
    })


    local signs = {
      Error = " ",
      Warn  = " ",
      Hint  = " ",
      Info  = " ",
    }

    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end


    vim.diagnostic.config({
      virtual_lines = true,
      -- update_in_insert = false,
    })

    require("lspconfig").clangd.setup {
      on_attach = on_attach,
      capabilities = cmp_lsp.default_capabilities(),
      cmd = {
        "clangd",
        "--clangd-tidy",
        "--clangd-tidy-checks=*",
        "--enable-config",
        "--diagnostic-style=detailed",
        "--completion-style=detailed",
        "--header-insertion=never",
        "--fallback-style=Mozilla",
      },
    }

    vim.api.nvim_create_autocmd("CursorHold", {
      callback = function()
        vim.diagnostic.show()
      end,
    })
  end,
},
{
  "SmiteshP/nvim-navic",
  dependencies = {
    "neovim/nvim-lspconfig"
  },
  config = function()
    local navic = require("nvim-navic")
    require("lspconfig").clangd.setup {
      on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
      end
    }
  end
},
}
