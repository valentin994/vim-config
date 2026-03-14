# Neovim Keybindings Cheatsheet

> Leader key: `Space`

---

## File Explorer (nvim-tree)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>e` | Normal | Toggle file explorer |
| `<C-t>` | Normal (in tree) | Go up to parent directory |
| `?` | Normal (in tree) | Toggle help |

---

## Telescope

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ff` | Normal | Find files |
| `<leader>fg` | Normal | Live grep |
| `<leader>fb` | Normal | Open buffers |

---

## LSP

| Key | Mode | Action |
|-----|------|--------|
| `gD` | Normal | Go to declaration |
| `gd` | Normal | Go to definition |
| `K` | Normal | Hover documentation |
| `gi` | Normal | Go to implementation |
| `<C-k>` | Normal | Signature help |
| `gr` | Normal | References |
| `<space>rn` | Normal | Rename symbol |
| `<space>ca` | Normal / Visual | Code action |
| `<space>f` | Normal | Format buffer |
| `<space>D` | Normal | Type definition |
| `<space>wa` | Normal | Add workspace folder |
| `<space>wr` | Normal | Remove workspace folder |
| `<space>wl` | Normal | List workspace folders |
| `[d` | Normal | Previous diagnostic |
| `]d` | Normal | Next diagnostic |
| `<space>q` | Normal | Send diagnostics to loclist |

---

## Trouble (Diagnostics)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>xx` | Normal | Toggle diagnostics panel |
| `<leader>xb` | Normal | Toggle buffer diagnostics |
| `<leader>xl` | Normal | Toggle location list |
| `<leader>xq` | Normal | Toggle quickfix list |

---

## Folds (nvim-ufo)

| Key | Mode | Action |
|-----|------|--------|
| `zR` | Normal | Open all folds |
| `zM` | Normal | Close all folds |

---

## CopilotChat

| Key | Mode | Action |
|-----|------|--------|
| `<leader>cc` | Normal | Toggle chat panel |
| `<leader>cr` | Normal | Reset chat |
| `<leader>cs` | Visual | Send selection to chat |
| `<leader>ce` | Normal | Explain current buffer |

---

## Todo Comments

| Key | Mode | Action |
|-----|------|--------|
| `<leader>tt` | Normal | Search TODOs (Telescope) |

---

## Comment.nvim

| Key | Mode | Action |
|-----|------|--------|
| `gcc` | Normal | Toggle line comment |
| `gbc` | Normal | Toggle block comment |
| `gc` | Visual | Toggle line comment |
| `gb` | Visual | Toggle block comment |
