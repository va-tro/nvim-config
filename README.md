# YOHOHOHO! My Neovim Configuration! 🎵

*"May I see your ..? YOHOHOHO!"*

## 🎼
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

## 🎸 Key Mappings
### General Moves
- `<leader>`
- `<leader>ff`
- `<leader>fg`
- `<leader>fb`
- `<leader>fh`
### Harpoon
- `<leader>a`
- `<leader>e`
- `<leader>h`
- `<C-h>` - Jump to file 1
- `<C-j>` - Jump to file 2
- `<C-k>` - Jump to file 3
- `<C-l>` - Jump to file 4
### LSP 
- `gd`
- `gr`
- `K`
- `[d`
- `]d`

## Requirements
- Neovim 0.11.0 or higher
- Git
- A Nerd Font
- Node.js
- Python
