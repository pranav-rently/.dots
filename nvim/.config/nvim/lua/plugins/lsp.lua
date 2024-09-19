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
        -- gopls = {
        --   cmd = { "gopls" },
        --   settings = {
        --     gopls = {
        --       experimentalPostfixCompletions = true,
        --       analyses = {
        --         unusedparams = true,
        --         shadow = true,
        --       },
        --       staticcheck = true,
        --     },
        --   },
        -- },
      },
    },
  },
}
