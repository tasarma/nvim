# Modern Neovim Configuration

> **Created by Google Antigravity**

A blazing fast, fully configured Neovim environment designed for Rust, Python, and Full-Stack Web Development.

## 🔒 Security & Privacy

This configuration is designed with privacy in mind:
- **Telemetry Disabled**: The Lua Language Server telemetry is explicitly disabled.
- **Open Source**: All plugins are fetched from reputable open-source repositories on GitHub.
- **Local Execution**: All code analysis (LSP), formatting, and linting happens locally on your machine.
- **No Data Exfiltration**: This configuration contains no code to send your keystrokes or file content to external servers.

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
- **Commenting**: [Comment.nvim](https://github.com/numToStr/Comment.nvim) for easy toggle commenting.
- **Auto-Pairs**: [nvim-autopairs](https://github.com/windwp/nvim-autopairs) for automatic bracket and quote pairing.
- **Multi-Cursor**: [vim-visual-multi](https://github.com/mg979/vim-visual-multi) for VSCode-like multi-cursor editing.
- **Folding**: [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo) for high-performance code folding.

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

### Folding (nvim-ufo)
- `za`: Toggle fold under cursor
- `zc`: Close fold
- `zo`: Open fold
- `zM`: Close all folds
- `zR`: Open all folds
- `zr`: Open folds except kinds
- `zm`: Close folds with

### Commenting
- `gcc`: Toggle comment for current line
- `gc` + motion: Toggle comment for target (e.g., `gcip` for paragraph)
- `gc` (Visual Mode): Toggle comment for selection

### Multi-Cursor
- `gb`: Select word under cursor and find next occurrence
- `<C-n>`: Add cursor down / select next
- `<C-Up>/<C-Down>`: Add cursors vertically
- `n/N`: Get next/previous occurrence (in multi-cursor mode)
- `q`: Skip current and get next
- `<Esc>`: Exit multi-cursor mode

### Markdown
- `<leader>mp`: Toggle Markdown Preview

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
│       ├── ufo.lua       # Code folding (nvim-ufo)
│       ├── comments.lua  # Commenting (Comment.nvim)
│       ├── multicursor.lua # Multi-cursor (vim-visual-multi)
│       └── languages/    # Language specific setups
│           ├── devops.lua
│           ├── markdown.lua
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

## 📝 Markdown
- **LSP**: `marksman`
- **Preview**: `<leader>mp` to toggle browser preview.
- **Rendering**: In-editor rendering of tables, checkboxes, and headers.

## 🐳 DevOps
- **Docker**:
  - **LSP**: `dockerls` - Docker language server for Dockerfiles
  - **Linting**: `hadolint` - Dockerfile linter
  - **Syntax**: Treesitter highlighting
- **YAML**:
  - **LSP**: `yamlls` - YAML language server with schema support
  - **Schemas**: Auto-completion and validation for Kubernetes, GitHub Actions, Docker Compose, and more
  - **Syntax**: Treesitter highlighting
- **JSON**:
  - **LSP**: `jsonls` - JSON language server with schema support
  - **Schemas**: Auto-completion for `package.json`, `tsconfig.json`, and more
  - **Formatting**: `prettier`
- **Terraform**:
  - **LSP**: `terraformls` - HashiCorp Terraform Language Server
  - **Syntax**: Treesitter highlighting for HCL and Terraform
  - **Plugin**: `vim-terraform` for enhanced indentation and alignment
- **Kubernetes**:
  - **LSP**: `yamlls` with specialized Kubernetes schemas
  - **Validation**: Real-time schema validation for K8s resources
- **Ansible**:
  - **LSP**: `ansiblels` - Ansible Language Server
  - **Syntax**: YAML-based highlighting with Ansible-specific awareness
- **TOML**:
  - **LSP**: `taplo` - TOML language server
  - **Syntax**: Treesitter highlighting
