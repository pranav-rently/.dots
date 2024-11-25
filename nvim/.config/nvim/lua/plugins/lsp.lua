return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "prettier",
        "eslint_d",
        "typescript-language-server",
        "tailwindcss-language-server",
      })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.window = {
        completion = cmp.config.window.bordered({}),
        documentation = cmp.config.window.bordered({}),
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        html = {},
        cssls = {},
        tsserver = {},
        tailwindcss = {},
        astro = {},
        svelte = {
          cmd = { "svelteserver", "--stdio" },
          filetype = { "svelte" },
        },
        -- Lua
        lua_ls = {
          settings = {
            Lua = {
              -- make the language server recognize "vim" global
              hint = true,
              diagnostics = {
                globals = { "vim" },
              },
              workspace = {
                -- make language server aware of runtime files
                library = {
                  [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                  [vim.fn.stdpath("config") .. "/lua"] = true,
                },
              },
            },
          },
        },
        -- Go
        gopls = {
          cmd = { "gopls" },
          settings = {
            gopls = {
              experimentalPostfixCompletions = true,
              analyses = {
                unusedparams = true,
                shadow = true,
              },
              staticcheck = true,
            },
          },
        },
      },
    },
  },
}
