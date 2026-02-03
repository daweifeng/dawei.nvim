# Neovim Keymap Reference

> **Leader key:** `<Space>`

## Table of Contents
- [Essential Navigation](#essential-navigation)
- [Window Management](#window-management)
- [File & Buffer Navigation](#file--buffer-navigation)
- [Telescope Search](#telescope-search)
- [LSP (Language Server)](#lsp-language-server)
- [Code Formatting](#code-formatting)
- [Git (Gitsigns)](#git-gitsigns)
- [Git UI (Lazygit)](#git-ui-lazygit)
- [Terminal (ToggleTerm)](#terminal-toggleterm)
- [File Explorer (Neo-tree)](#file-explorer-neo-tree)
- [Diagnostics (Trouble)](#diagnostics-trouble)
- [Quick File Navigation (Harpoon)](#quick-file-navigation-harpoon)
- [Session Management](#session-management)
- [Mini.nvim Features](#minivim-features)

---

## Essential Navigation

| Key | Mode | Description |
|-----|------|-------------|
| `<Esc>` | Normal | Clear search highlights |
| `<Esc><Esc>` | Terminal | Exit terminal mode |
| `<leader>q` | Normal | Open diagnostic quickfix list |

---

## Window Management

### Move Between Windows (Splits)
| Key | Mode | Description |
|-----|------|-------------|
| `<C-h>` | Normal | Move to left window |
| `<C-j>` | Normal | Move to lower window |
| `<C-k>` | Normal | Move to upper window |
| `<C-l>` | Normal | Move to right window |

### Resize Windows

| Key | Mode | Description |
|-----|------|-------------|
| `<M-h>` (Alt+h) | Normal | Decrease window width |
| `<M-l>` (Alt+l) | Normal | Increase window width |
| `<M-j>` (Alt+j) | Normal | Decrease window height |
| `<M-k>` (Alt+k) | Normal | Increase window height |

> **Note:** Windows auto-equalize when the terminal is resized.

### Telescope Actions (Within Picker)
| Key | Description |
|-----|-------------|
| `<C-x>` | Open in horizontal split |
| `<C-v>` | Open in vertical split |
| `<C-t>` | Open in new tab |
| `<Enter>` | Open in current window |

---

## File & Buffer Navigation

| Key | Mode | Description |
|-----|------|-------------|
| `<leader><leader>` | Normal | Find existing buffers |
| `\` | Normal | Toggle Neo-tree file explorer |

---

## Telescope Search

All search commands open in Telescope fuzzy finder.

| Key | Description |
|-----|-------------|
| `<leader>sh` | Search help documentation |
| `<leader>sk` | Search keymaps |
| `<leader>sf` | Search files in project |
| `<leader>ss` | Select Telescope picker |
| `<leader>sw` | Search current word under cursor |
| `<leader>sg` | Search by grep (live grep) |
| `<leader>sd` | Search diagnostics |
| `<leader>sr` | Resume previous search |
| `<leader>s.` | Search recent files (oldfiles) |
| `<leader>/` | Search in current buffer (fuzzy) |
| `<leader>s/` | Search in open files |
| `<leader>sn` | Search in Neovim config files |

---

## LSP (Language Server)

These keymaps are available when an LSP is attached to a buffer.

### Go To Commands
| Key | Description |
|-----|-------------|
| `gd` | Go to definition |
| `gr` | Go to references |
| `gri` | Go to implementation |
| `grt` | Go to type definition |
| `grD` | Go to declaration |
| `gO` | Open document symbols |
| `gW` | Open workspace symbols |

### Code Actions
| Key | Mode | Description |
|-----|------|-------------|
| `grn` | Normal | Rename symbol |
| `ga` | Normal/Visual | Code action |

### Documentation & Hints
| Key | Description |
|-----|-------------|
| `K` | Show hover documentation |
| `<leader>th` | Toggle inlay hints |

### Navigation
| Key | Description |
|-----|-------------|
| `<C-t>` | Jump back (after going to definition) |

---

## Code Formatting

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>f` | Normal/Visual | Format buffer/selection |

> **Note:** Auto-format on save is enabled for most file types.

---

## Git (Gitsigns)

### Hunk Navigation
| Key | Description |
|-----|-------------|
| `]c` | Jump to next change |
| `[c` | Jump to previous change |

### Hunk Actions
| Key | Mode | Description |
|-----|------|-------------|
| `<leader>hs` | Normal/Visual | Stage hunk |
| `<leader>hr` | Normal/Visual | Reset hunk |
| `<leader>hS` | Normal | Stage entire buffer |
| `<leader>hR` | Normal | Reset entire buffer |
| `<leader>hu` | Normal | Undo stage hunk |
| `<leader>hp` | Normal | Preview hunk |

### Git Information
| Key | Description |
|-----|-------------|
| `<leader>hb` | Show git blame for line |
| `<leader>hd` | Diff against index |
| `<leader>hD` | Diff against last commit |

### Toggles
| Key | Description |
|-----|-------------|
| `<leader>tb` | Toggle git blame line display |
| `<leader>tD` | Toggle git show deleted |

---

## Git UI (Lazygit)

| Key | Description |
|-----|-------------|
| `<leader>gg` | Open Lazygit |

**Inside Lazygit:**
- `q` or `<Esc>` - Quit
- `?` - Show help/keybindings

---

## Terminal (ToggleTerm)

| Key | Mode | Description |
|-----|------|-------------|
| `<C-\>` | Normal/Insert/Terminal | Toggle floating terminal |
| `<leader>tf` | Normal | Toggle floating terminal |
| `<leader>th` | Normal | Toggle horizontal terminal |
| `<leader>tv` | Normal | Toggle vertical terminal |

**Inside Terminal:**
- `<C-\>` - Hide terminal (keeps running)
- `<C-\><C-n>` - Enter normal mode (for scrolling)
- `i` or `a` - Back to insert mode
- `exit` or `<C-d>` - Close terminal permanently

**Multiple Terminals:**
- `:ToggleTerm 2<CR>` - Open terminal #2
- `:ToggleTerm 3<CR>` - Open terminal #3

---

## File Explorer (Neo-tree)

| Key | Description |
|-----|-------------|
| `\` | Toggle Neo-tree |

**Inside Neo-tree:**
- `\` - Close Neo-tree
- `a` - Add file/directory
- `d` - Delete
- `r` - Rename
- `y` - Copy to clipboard
- `x` - Cut to clipboard
- `p` - Paste from clipboard
- `?` - Show help

---

## Diagnostics (Trouble)

Better diagnostics and lists viewer.

| Key | Description |
|-----|-------------|
| `<leader>xx` | Toggle diagnostics (workspace) |
| `<leader>xX` | Toggle diagnostics (buffer only) |
| `<leader>cs` | Show symbols (document outline) |
| `<leader>cl` | LSP definitions/references |
| `<leader>xL` | Location list |
| `<leader>xQ` | Quickfix list |

---

## Quick File Navigation (Harpoon)

Mark frequently used files for instant access.

| Key | Description |
|-----|-------------|
| `<leader>a` | Add current file to harpoon |
| `<C-e>` | Toggle harpoon menu |
| `<leader>1` | Jump to harpoon file 1 |
| `<leader>2` | Jump to harpoon file 2 |
| `<leader>3` | Jump to harpoon file 3 |
| `<leader>4` | Jump to harpoon file 4 |

**Workflow:**
1. Open important files
2. Press `<leader>a` on each to mark them
3. Use `<leader>1/2/3/4` to instantly jump between them

---

## Session Management

Automatically saves and restores your editor state.

| Key | Description |
|-----|-------------|
| `<leader>qs` | Load session |
| `<leader>ql` | Load last session |
| `<leader>qd` | Stop saving current session |

> **Note:** Sessions auto-restore when opening `nvim` without arguments.
> Sessions are saved per directory and git branch.

---

## Mini.nvim Features

### Surround (mini.surround)

Add/delete/replace surrounding characters (quotes, brackets, etc.)

| Key | Description |
|-----|-------------|
| `sa{motion}{char}` | Add surround (e.g., `saiw)` = surround word with parens) |
| `sd{char}` | Delete surround (e.g., `sd'` = delete surrounding quotes) |
| `sr{old}{new}` | Replace surround (e.g., `sr)'` = replace parens with quotes) |

**Examples:**
- `saiw)` - Surround inner word with parentheses
- `sd"` - Delete surrounding quotes
- `sr)]` - Replace surrounding ) with ]

### Text Objects (mini.ai)

Enhanced text objects for better selection.

**Examples:**
- `vaq` - Visually select around quote (includes quotes)
- `viq` - Visually select inside quote (excludes quotes)
- `dab` - Delete around bracket
- `cib` - Change inside bracket

---

## Tips & Tricks

### Discovering Keymaps
- `<leader>sk` - Search all keymaps with Telescope
- `:WhichKey` - Show which-key menu
- Type `<leader>` and wait - which-key popup shows available keys

### Common Workflows

**1. Opening Files in Splits:**
- `<leader>sf` → find file
- `<C-v>` → open in vertical split
- `<C-h/j/k/l>` → navigate between splits

**2. Quick File Switching (Harpoon):**
- Mark 3-4 main files with `<leader>a`
- Switch between them with `<leader>1/2/3/4`

**3. Git Workflow:**
- `<leader>gg` → Open lazygit for staging/commits
- `]c` / `[c` → Navigate changes
- `<leader>hs` → Stage individual hunks
- `<leader>hp` → Preview changes

**4. Code Navigation:**
- `gd` → Go to definition
- `K` → Show documentation
- `gr` → Find all references
- `<C-t>` → Jump back

**5. Finding Things:**
- `<leader>sf` → Find files
- `<leader>sg` → Grep in project
- `<leader>sw` → Search current word
- `<leader><leader>` → Switch buffers

---

## Quick Reference Card

### Most Used Keys

```
Navigation:       <C-h/j/k/l>    Window movement
Files:            <leader>sf     Find files
Search:           <leader>sg     Grep search
Buffers:          <leader><leader> Switch buffers
Terminal:         <C-\>          Toggle terminal
File Tree:        \              Toggle Neo-tree
Git UI:           <leader>gg     Open lazygit

LSP:
  Definition:     gd             Go to definition
  References:     gr             Find references
  Documentation:  K              Show docs
  Rename:         grn            Rename symbol
  Code Action:    ga             Code action

Git:
  Next Change:    ]c             Next hunk
  Stage:          <leader>hs     Stage hunk
  Preview:        <leader>hp     Preview hunk

Harpoon:          <leader>1/2/3/4 Jump to marked files
Format:           <leader>f      Format code
```

---

**Generated:** 2026-01-30
**Config Location:** `~/.config/nvim/`
