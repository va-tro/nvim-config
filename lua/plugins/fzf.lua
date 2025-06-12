return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("fzf-lua").setup({
        "telescope", -- use telescope-like defaults
        winopts = {
          height = 0.85,
          width = 0.80,
          preview = {
            layout = "flex",
            flip_columns = 120,
          },
        },
      })
    end,
  },
}
