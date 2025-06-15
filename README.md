
*"May I see your ..? YOHOHOHO!"*


- **Plugin Manager**:       [lazy.nvim](https://github.com/folke/lazy.nvim)
- **Theme**:                [Catppuccin](https://github.com/catppuccin/nvim)
- **Completion**:           [blink.cmp](https://github.com/saghen/blink.cmp)
- **Fuzzy Finder**:         [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- **File Navigation**:      [Harpoon](https://github.com/ThePrimeagen/harpoon)
- **Status Line**:          [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- **LSP Support**:          Native LSP with Mason
- **Formatting**:           [Conform.nvim](https://github.com/stevearc/conform.nvim)
- **Syntax Highlighting**:  [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

## Configuration Structure 
```
~/.config/nvim/
├── init.lua
├── lua/
│   ├── config/
│   │   ├── keymaps.lua
│   │   ├── options.lua
│   │   └── ...
│   └── plugins/
│       ├── blink.lua
│       ├── lsp.lua
│       └── ...
└── lazy-lock.json
```
