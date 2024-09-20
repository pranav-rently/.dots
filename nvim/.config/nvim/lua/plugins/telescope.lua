return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    local trouble = require("trouble.sources.telescope")

    telescope.setup({
      defaults = {
        prompt_prefix = "  ",
        selection_caret = "  ",
        layout_config = { prompt_position = "top" },
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
        path_display = { "smart" },
        file_ignore_patterns = { ".git/", "node_modules/" },
        mappings = {
          i = {
            ["<Esc>"] = actions.close,
            ["<C-Down>"] = actions.cycle_history_next,
            ["<C-Up>"] = actions.cycle_history_prev,
            ["<C-f>"] = actions.preview_scrolling_down,
            ["<C-b>"] = actions.preview_scrolling_up,
            ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
            ["<C-t>"] = trouble.open,
          },
          n = {
            ["<C-t>"] = trouble.open,
          },
        },
      },
    })

    telescope.load_extension("fzf")
  end,
  keys = {
    {
      "<leader>df",
      function()
        local builtin = require("telescope.builtin")
        builtin.find_files({
          prompt_title = "< Dotfiles >",
          cwd = "$HOME/.dots/",
          hidden = true,
        })
      end,
    },
  },
}
