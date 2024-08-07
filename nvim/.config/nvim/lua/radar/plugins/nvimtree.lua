return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  keys = {
    { "<leader>e", "<CMD>NvimTreeToggle<CR>" },
  },
  config = function()
    require("nvim-tree").setup({
      disable_netrw = true,
      hijack_netrw = true,
      update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
      },
      git = {
        enable = false,
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      renderer = {
        highlight_git = true,
        root_folder_modifier = ":t",
        indent_markers = {
          enable = true,
        },
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
          },
          glyphs = {
            default = "",
            symlink = "",
            folder = {
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
            },
          },
        },
      },
    })
  end,
}
