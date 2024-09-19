return {
  { "catppuccin/nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      flavour = "mocha",
      colorscheme = "catppuccin",
      styles = {
        functions = { "italic" },
      },
    },
  },
}
