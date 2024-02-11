return {
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = true,
        sidebars = { "qf", "vista_kind", "terminal", "packer" },
        -- Change the "hint" color to the "orange" color, and make the "error" color bright red
        on_colors = function(colors)
          colors.hint = colors.orange
          colors.error = "#ff0000"
        end,
      })
      -- load the colorscheme here
      vim.cmd.colorscheme("tokyonight")
    end,
  },
  {
    -- "catppuccin/nvim",
    -- name = "catppuccin",
    -- priority = 1000, -- make sure to load this before all the other start plugins
    -- config = function()
    --   require("catppuccin").setup({
    --     flavor = "macchiator",
    --     transparent_background = true,
    --     -- sidebars = { "qf", "vista_kind", "terminal", "packer" },
    --     -- Change the "hint" color to the "orange" color, and make the "error" color bright red
    --     -- on_colors = function(colors)
    --     --   colors.hint = colors.orange
    --     --   colors.error = "#ff0000"
    --     -- end,
    --   })
    --   -- load the colorscheme here
    --   vim.cmd.colorscheme("catppuccin")
    -- end,
  },
}
