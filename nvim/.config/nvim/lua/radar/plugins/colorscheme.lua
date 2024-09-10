return {
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("tokyonight").setup({
        style = "moon",
        styles = {
          functions = { italic = true },
        },
        transparent = true,
        sidebars = { "qf", "vista_kind", "terminal", "packer" },
      })
      -- load the colorscheme here
      vim.cmd.colorscheme("tokyonight")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        flavour = "mocha",
        term_colors = false,
        styles = {
          keywords = { "italic" },
          functions = { "italic" },
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          lsp_trouble = true,
          mason = true,
          native_lsp = {
            enabled = true,
            underlines = {
              errors = { "undercurl" },
              hints = { "undercurl" },
              warnings = { "undercurl" },
              information = { "undercurl" },
            },
          },
          nvimtree = true,
          harpoon = true,
          telescope = true,
          treesitter = true,
          treesitter_context = true,
          which_key = true,
        },
        -- color_overrides = {
        --   mocha = {
        --     rosewater = "#ea6962",
        --     flamingo = "#ea6962",
        --     red = "#ea6962",
        --     maroon = "#ea6962",
        --     pink = "#d3869b",
        --     mauve = "#d3869b",
        --     peach = "#e78a4e",
        --     yellow = "#d8a657",
        --     green = "#a9b665",
        --     teal = "#89b482",
        --     sky = "#89b482",
        --     sapphire = "#89b482",
        --     blue = "#7daea3",
        --     lavender = "#7daea3",
        --     text = "#ebdbb2",
        --     subtext1 = "#d5c4a1",
        --     subtext0 = "#bdae93",
        --     overlay2 = "#a89984",
        --     overlay1 = "#928374",
        --     overlay0 = "#595959",
        --     surface2 = "#4d4d4d",
        --     surface1 = "#404040",
        --     surface0 = "#292929",
        --     base = "#1d2021",
        --     mantle = "#191b1c",
        --     crust = "#141617",
        --   },
        -- },
      })
      -- load the colorscheme here
      -- vim.cmd.colorscheme("catppuccin")
    end,
  },
}
