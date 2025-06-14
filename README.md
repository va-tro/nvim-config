# YOHOHOHO! My Neovim Configuration! 🎵

*"May I see your configuration? YOHOHOHO!"*

## 🎼 Features That'll Make Your Code Sing!

- **Plugin Manager**: [lazy.nvim](https://github.com/folke/lazy.nvim) - "Even my bones are lazy, YOHOHOHO!"
- **Theme**: [Catppuccin](https://github.com/catppuccin/nvim) - "A theme so sweet, it'll make your eyes dance!"
- **Completion**: [blink.cmp](https://github.com/saghen/blink.cmp) - "Faster than my sword strikes!"
- **Fuzzy Finder**: [fzf-lua](https://github.com/ibhagwan/fzf-lua) - "Finding files like finding my lost shadow!"
- **File Navigation**: [Harpoon](https://github.com/ThePrimeagen/harpoon) - "Stabbing files with precision, YOHOHOHO!"
- **Status Line**: [Lualine](https://github.com/nvim-lualine/lualine.nvim) - "A status line that sings!"
- **LSP Support**: Native LSP with Mason - "Understanding code like understanding sheet music!"
- **Formatting**: [Conform.nvim](https://github.com/stevearc/conform.nvim) - "Making your code dance in harmony!"
- **Syntax Highlighting**: [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - "Colors that make your code sing!"
- **Clipboard**: [Neoclip](https://github.com/AckslD/nvim-neoclip.lua) - "Remembering your code like I remember my songs!"

## 🎻 Installation (A Musical Journey)

1. Clone this repository (like finding a lost treasure!):
```bash
git clone <your-repo-url> ~/.config/nvim
```

2. Install Neovim (version 0.10.0 or higher):
```bash
# Ubuntu/Debian
sudo apt install neovim

# Arch Linux
sudo pacman -S neovim

# macOS
brew install neovim
```

3. Start Neovim and let the plugins dance into place:
```bash
nvim
```

## 🎵 Configuration Structure (The Sheet Music)

```
~/.config/nvim/
├── init.lua              # The opening note
├── lua/
│   ├── config/          # The main melody
│   │   ├── keymaps.lua  # The dance steps
│   │   ├── options.lua  # The tempo
│   │   └── ...
│   └── plugins/         # The orchestra
│       ├── blink.lua    # The soloist
│       ├── lsp.lua      # The conductor
│       └── ...
└── lazy-lock.json       # The setlist
```

## 🎸 Key Mappings (The Dance Steps)

### General Moves
- `<leader>` is your dance partner (space)
- `<leader>e` - Open the treasure chest (file explorer)
- `<leader>ff` - Find the lost sheet music (files)
- `<leader>fg` - Search through the songbook (grep)
- `<leader>fb` - Switch between songs (buffers)
- `<leader>fh` - Read the music theory (help tags)

### Harpoon Steps
- `<leader>a` - Mark your favorite spot
- `<leader>h` - Show the marked spots
- `<C-h>` - Jump to spot 1
- `<C-j>` - Jump to spot 2
- `<C-k>` - Jump to spot 3
- `<C-l>` - Jump to spot 4

### LSP Moves
- `gd` - Follow the melody (go to definition)
- `gr` - Find similar tunes (references)
- `K` - Read the sheet music (documentation)
- `[d` - Previous wrong note
- `]d` - Next wrong note

## 🎺 Requirements (The Band Members)

- Neovim 0.10.0 or higher (The lead singer)
- Git (The roadie)
- A Nerd Font (The costume)
- Node.js (The backup singer)
- Python (The drummer)

## 🎹 Customization (Make It Your Own Song)

1. Edit `lua/config/options.lua` to set the tempo
2. Edit `lua/config/keymaps.lua` to change the dance steps
3. Edit plugin configurations in `lua/plugins/` to tune the instruments

## 🎤 License

MIT License - Feel free to make it your own song! YOHOHOHO!

## 🎭 Acknowledgments

- [ThePrimeagen](https://github.com/ThePrimeagen) - "The composer who inspired this symphony!"
- [folke](https://github.com/folke) - "The conductor of lazy.nvim!"
- All plugin authors - "The orchestra that makes this possible!"

*"Even though I'm just bones, I can still code! YOHOHOHO!"* 🎵
