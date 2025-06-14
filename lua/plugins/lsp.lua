return {
    -- LSP Configuration
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            { "williamboman/mason.nvim", config = true },
            "williamboman/mason-lspconfig.nvim",
            { "j-hui/fidget.nvim",       config = true }, -- LSP status updates
            'neovim/nvim-lspconfig',
            { 'saghen/blink.cmp' },
        },
        config = function()
            -- Setup mason first
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",        -- Lua
                    "ts_ls",         -- TypeScript/JavaScript
                    "pyright",       -- Python
                    "rust_analyzer", -- Rust
                },
            })

            local lspconfig = require("lspconfig")

            -- Enhanced capabilities
            local capabilities = vim.lsp.protocol.make_client_capabilities()

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
