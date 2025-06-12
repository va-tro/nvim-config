return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files" },
      { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep" },
      { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
      { "<leader>fh", "<cmd>FzfLua help_tags<cr>", desc = "Help Tags" },
      { "<leader>fr", "<cmd>FzfLua lsp_references<cr>", desc = "LSP References" },
      { "<leader>fs", "<cmd>FzfLua lsp_document_symbols<cr>", desc = "Document Symbols" },
      { "<leader>fd", "<cmd>FzfLua diagnostics_document<cr>", desc = "Document Diagnostics" },
      { "<leader>fw", "<cmd>FzfLua diagnostics_workspace<cr>", desc = "Workspace Diagnostics" },
    },
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
