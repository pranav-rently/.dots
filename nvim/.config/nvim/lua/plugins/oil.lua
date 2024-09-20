return {
  "stevearc/oil.nvim",
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      win_options = {
        wrap = false,
        signcolumn = "no",
        cursorcolumn = false,
        foldcolumn = "0",
        spell = false,
        list = false,
        conceallevel = 3,
        concealcursor = "nvic",
      },
    })
  end,
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
    { "<leader>-", "<cmd>require('oil').toggle_float()<cr>", desc = "Open parent directory" },
  },
}
