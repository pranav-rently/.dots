return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<Esc>"] = actions.close,
            ["<Down>"] = actions.cycle_history_next,
            ["<Up>"] = actions.cycle_history_prev,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local opts = { noremap = true, silent = true }
    local keymap = vim.keymap.set

    keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
    keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", opts)
    keymap("n", "<leader>fs", "<cmd>Telescope grep_string({ search = vim.fn.input('Grep for > ')})<cr>", opts)
    keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
    keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
    keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
    keymap("n", "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
    keymap("n", "<leader>dd", "<cmd>Telescope diagnostics<cr>", opts)
  end,
}
