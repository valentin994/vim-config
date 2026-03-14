# Neovim Configuration

A modular Neovim configuration built with [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager.

## Structure

```
~/.config/nvim/
├── init.lua                          # Entry point
├── lua/plugins/
│   ├── base.lua                      # Core Neovim options
│   ├── lazy.lua                      # Plugin manager bootstrap
│   └── pconfigs/                     # Individual plugin configurations
│       ├── autopairs.lua
│       ├── cmp.lua
│       ├── comment.lua
│       ├── copilot-chat.lua
│       ├── flutter.lua
│       ├── fold.lua
│       ├── format.lua
│       ├── gitblame.lua
│       ├── ident.lua
│       ├── lsp.lua
│       ├── lualine.lua
│       ├── markdown.lua
│       ├── nerdtree.lua
│       ├── nvim-ts-autotag.lua
│       ├── telescope.lua
│       ├── theme.lua
│       ├── todocomments.lua
│       ├── treesitter.lua
│       └── trouble.lua
└── KEYBINDINGS.md
```

## Plugins

### Editor

| Plugin | Description |
|--------|-------------|
| [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim) | Colorscheme (transparent background) |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | File explorer |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Indentation guides |
| [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo) | Code folding |
| [vim-commentary](https://github.com/tpope/vim-commentary) | Toggle comments |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlight and search TODO comments |

### Code Intelligence

| Plugin | Description |
|--------|-------------|
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client configurations |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting and code parsing |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletion engine |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | Diagnostics panel |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Formatting (format on save) |
| [nvim-lint](https://github.com/mfussenegger/nvim-lint) | Linting |

### Language / Framework Support

| Plugin | Description |
|--------|-------------|
| [flutter-tools.nvim](https://github.com/akinsho/flutter-tools.nvim) | Flutter/Dart development |
| [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) | Auto close/rename HTML tags |
| [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) | Markdown live preview in browser |

### Git & AI

| Plugin | Description |
|--------|-------------|
| [git-blame.nvim](https://github.com/f-person/git-blame.nvim) | Inline git blame |
| [CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim) | GitHub Copilot chat integration |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Auto close brackets/quotes |

## LSP Servers

The following language servers are configured out of the box:

- **TypeScript/JavaScript** — `ts_ls`
- **Python** — `pyright`
- **Rust** — `rust_analyzer`
- **Go** — `gopls`
- **Lua** — `lua_ls` (with Neovim runtime support)
- **HTML** — `html`
- **CSS** — `cssls`
- **Svelte** — `svelte`
- **Terraform** — `terraformls`
- **YAML** — `yamlls`
- **Docker** — `dockerls`, `docker_compose_language_service`

## Formatters & Linters

| Language | Formatter | Linter |
|----------|-----------|--------|
| Python | `ruff_fix`, `ruff_format` | `ruff` |
| Rust | `rustfmt` | — |
| JS/TS/Svelte | `prettier` | `eslint` |
| CSS/HTML/JSON/YAML | `prettier` | — |

Formatting runs automatically on save.

## Keybindings

> Leader key: `Space`

### File Explorer

| Key | Mode | Action |
|-----|------|--------|
| `<leader>e` | Normal | Toggle file explorer |
| `<C-t>` | Normal (tree) | Go to parent directory |
| `?` | Normal (tree) | Toggle help |

### Telescope

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ff` | Normal | Find files |
| `<leader>fg` | Normal | Live grep |
| `<leader>fb` | Normal | Open buffers |

### LSP

| Key | Mode | Action |
|-----|------|--------|
| `gd` | Normal | Go to definition |
| `gr` | Normal | References |
| `K` | Normal | Hover documentation |
| `<leader>rn` | Normal | Rename symbol |
| `<leader>ca` | Normal | Code action |
| `<leader>d` | Normal | Open diagnostic float |
| `[d` / `]d` | Normal | Prev / Next diagnostic |

### Trouble

| Key | Mode | Action |
|-----|------|--------|
| `<leader>xx` | Normal | Toggle diagnostics |
| `<leader>xb` | Normal | Buffer diagnostics |
| `<leader>xl` | Normal | Location list |
| `<leader>xq` | Normal | Quickfix list |

### Folds

| Key | Mode | Action |
|-----|------|--------|
| `zR` | Normal | Open all folds |
| `zM` | Normal | Close all folds |

### CopilotChat

| Key | Mode | Action |
|-----|------|--------|
| `<leader>cc` | Normal | Toggle chat panel |
| `<leader>cr` | Normal | Reset chat |
| `<leader>cs` | Visual | Send selection to chat |
| `<leader>ce` | Normal | Explain current buffer |

### Comments

| Key | Mode | Action |
|-----|------|--------|
| `gcc` | Normal | Toggle line comment |
| `gbc` | Normal | Toggle block comment |
| `gc` / `gb` | Visual | Toggle line / block comment |

### Todo Comments

| Key | Mode | Action |
|-----|------|--------|
| `<leader>tt` | Normal | Search TODOs via Telescope |

## Installation

1. Back up any existing Neovim config:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

2. Clone this repository:
   ```bash
   git clone <repo-url> ~/.config/nvim
   ```

3. Open Neovim — lazy.nvim will bootstrap and install all plugins automatically:
   ```bash
   nvim
   ```

4. Install LSP servers, formatters, and linters externally (e.g. via `mason`, `npm`, `pip`, `cargo`, `go install`).

## Requirements

- **Neovim** ≥ 0.10
- **Git**
- **GCC** (for Treesitter compilation)
- A [Nerd Font](https://www.nerdfonts.com/) for icons
- **Node.js** (for Prettier, ESLint, various LSP servers)
- **ripgrep** (for Telescope live grep)
