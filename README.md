# Modern Neovim Configuration

A blazing fast, fully configured Neovim environment designed for Rust, Python, and Full-Stack Web Development.

## ⚡ Features

- **Package Management**: [lazy.nvim](https://github.com/folke/lazy.nvim) for speed and ease.
- **LSP**: Native LSP with [Mason](https://github.com/williamboman/mason.nvim) for easy installer management.
- **Completion**: [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) with snippets.
- **Formatting**: [conform.nvim](https://github.com/stevearc/conform.nvim) for auto-formatting on save.
- **Treesitter**: Advanced syntax highlighting and indentation.
- **Fuzzy Finding**: [Telescope](https://github.com/nvim-telescope/telescope.nvim).
- **File Explorer**: [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim).
- **Git**: [Gitsigns](https://github.com/lewis6991/gitsigns.nvim).
- **Testing**: [Neotest](https://github.com/nvim-neotest/neotest).

## 🛠️ Requirements

- **Neovim** >= 0.9.0
- **Nerd Font** (for icons)
- **Ripgrep** (for Telescope grep)
- **fd** (for Telescope file finding)
- **C Compiler** (gcc or clang, for Treesitter parsers)
- **Node.js & npm** (for some LSPs like pyright, bash-ls, etc.)

## 🚀 Installation

1.  **Backup your existing configuration:**

    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    mv ~/.local/state/nvim ~/.local/state/nvim.bak
    mv ~/.cache/nvim ~/.cache/nvim.bak
    ```

2.  **Install this configuration:**

    You can either copy the files or symlink them.

    *Option A: Symlink (Recommended for development)*
    ```bash
    ln -s /path/to/this/nvim-config ~/.config/nvim
    ```

    *Option B: Copy*
    ```bash
    cp -r /path/to/this/nvim-config ~/.config/nvim
    ```

3.  **Start Neovim:**

    ```bash
    nvim
    ```

    `lazy.nvim` will automatically bootstrap and install all plugins. This might take a minute.

4.  **Install Tools:**

    Run `:Mason` to see the status of LSP servers and tools. They should auto-install based on the config, but you can manually install others here.

    Run `:checkhealth` to verify everything is working correctly.

## ⌨️ Keymaps

**Leader Key**: `<Space>`

### General
- `<C-s>`: Save file
- `<leader>l`: Open Lazy UI
- `<leader>e`: Toggle File Explorer (Neo-tree)

### Window Navigation
- `<C-h/j/k/l>`: Move focus to left/down/up/right window
- `<C-Up/Down/Left/Right>`: Resize window

### Buffers
- `<leader>fb`: Find buffers (Telescope) - **Select to switch, `<C-d>` to close**
- `<S-h>` / `[b`: Previous buffer
- `<S-l>` / `]b`: Next buffer
- `<leader>bb`: Switch to previously used buffer
- `<leader>bd`: Close current buffer

### Telescope (Find)
- `<leader>ff`: Find files
- `<leader>fg`: Live grep (text search)
- `<leader>fb`: Find open buffers
- `<leader>fh`: Help tags

### LSP & Coding
- `gd`: Go to definition
- `gr`: Go to references
- `K`: Hover documentation
- `<leader>ca`: Code actions
- `<leader>rn`: Rename symbol
- `<leader>cf`: Format file

### Testing
- `<leader>tt`: Run nearest test
- `<leader>tf`: Run file tests
- `<leader>to`: Open test output
- `<leader>ts`: Toggle test summary

## 📂 Structure

```text
~/.config/nvim/
├── init.lua              # Bootstrap lazy.nvim and load modules
├── lua/
│   ├── config/           # Core options, keymaps
│   │   ├── options.lua   # vim.opt settings
│   │   └── keymaps.lua   # Global keymaps
│   └── plugins/          # Plugin specs
│       ├── core.lua      # UI, Telescope, Treesitter
│       ├── lsp.lua       # Mason, LspConfig, Conform, Cmp
│       └── languages/    # Language specific setups
│           ├── rust.lua
│           ├── python.lua
│           └── web.lua
```

## 🦀 Rust
- **LSP**: `rust-analyzer` (via `rustaceanvim`)
- **Features**: Inlay hints, Cargo integration, DAP support.
- **Keymaps**: `K` in Rust files triggers `RustLsp hover actions`.

## 🐍 Python
- **LSP**: `pyright` (Type checking)
- **Formatting**: `ruff`
- **Testing**: `pytest` via `neotest-python`

## 🌐 Web (TS/JS/React/Svelte)
- **LSP**: `ts_ls`, `tailwindcss`, `svelte`, `html`, `cssls`
- **Formatting**: `prettier` (via `conform.nvim`)
