-- General keymaps
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show Diagnostic" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous Diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next Diagnostic" })

-- FZF keymaps
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>", { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua help_tags<cr>", { desc = "Help Tags" })
vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua lsp_references<cr>", { desc = "LSP References" })
vim.keymap.set("n", "<leader>fs", "<cmd>FzfLua lsp_document_symbols<cr>", { desc = "Document Symbols" })
vim.keymap.set("n", "<leader>fd", "<cmd>FzfLua diagnostics_document<cr>", { desc = "Document Diagnostics" })
vim.keymap.set("n", "<leader>fw", "<cmd>FzfLua diagnostics_workspace<cr>", { desc = "Workspace Diagnostics" })

-- LSP keymaps (applied when LSP attaches)
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local map = function(keys, func, desc)
      vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
    end

    map("gd", vim.lsp.buf.definition, "Goto Definition")
    map("gr", vim.lsp.buf.references, "Goto References")
    map("gI", vim.lsp.buf.implementation, "Goto Implementation")
    map("gy", vim.lsp.buf.type_definition, "Type Definition")
    map("<leader>rn", vim.lsp.buf.rename, "Rename")
    map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
    map("K", vim.lsp.buf.hover, "Hover Documentation")
  end,
})
