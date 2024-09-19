return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "css",
        "graphql",
        "html",
        "javascript",
        "json",
        "llvm",
        "lua",
        "nix",
        "sql",
        "svelte",
        "templ",
        "toml",
        "tsx",
        "typescript",
        "yaml",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
