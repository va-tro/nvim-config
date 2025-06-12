return {
  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "williamboman/mason.nvim", config = true },
      "williamboman/mason-lspconfig.nvim",
      { "j-hui/fidget.nvim", config = true }, -- LSP status updates
    },
    config = function()
      -- Setup mason first
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",    -- Lua
          "ts_ls",     -- TypeScript/JavaScript  
          "pyright",   -- Python
          "rust_analyzer", -- Rust
        },
      })

      local lspconfig = require("lspconfig")

      -- Enhanced capabilities
      local capabilities = vim.lsp.protocol.make_client_capabilities()

      -- LSP keymaps (applied when LSP attaches)
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(event)
          local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
          end

          -- Use built-in LSP functions instead of fzf-lua for basic functionality
          map("gd", vim.lsp.buf.definition, "Goto Definition")
          map("gr", vim.lsp.buf.references, "Goto References")
          map("gI", vim.lsp.buf.implementation, "Goto Implementation")
          map("gy", vim.lsp.buf.type_definition, "Type Definition")
          map("<leader>rn", vim.lsp.buf.rename, "Rename")
          map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
          map("K", vim.lsp.buf.hover, "Hover Documentation")
          
          -- Diagnostics
          map("[d", vim.diagnostic.goto_prev, "Previous Diagnostic")
          map("]d", vim.diagnostic.goto_next, "Next Diagnostic")
          map("<leader>e", vim.diagnostic.open_float, "Show Diagnostic")
        end,
      })

      -- Configure diagnostic display
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })

      -- Configure servers manually (more reliable than setup_handlers)
      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              runtime = { version = "LuaJIT" },
              workspace = {
                checkThirdParty = false,
                library = { vim.env.VIMRUNTIME },
              },
              telemetry = { enable = false },
              diagnostics = { globals = { "vim" } },
            },
          },
        },
        ts_ls = {},
        pyright = {},
        rust_analyzer = {},
      }

      -- Setup each server
      for server, config in pairs(servers) do
        config.capabilities = capabilities
        lspconfig[server].setup(config)
      end
    end,
  },
}
