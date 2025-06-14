return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "lua", "vim", "vimdoc", "query",   -- Neovim essentials
                    "javascript", "typescript", "tsx", -- Web dev
                    "python", "rust", "go",            -- Other languages
                    "json", "yaml", "toml",            -- Config files
                    "markdown", "markdown_inline",     -- Documentation
                },
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
                -- Text objects for better code navigation
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                        },
                    },
                },
            })
        end,
    },
}
