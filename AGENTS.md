# AGENTS.md

## Project structure

- Fork of `dam9000/kickstart-modular.nvim` (modular fork of `nvim-lua/kickstart.nvim`)
- Entrypoint: `init.lua` → `lua/options.lua`, `lua/keymaps.lua`, `lua/lazy-bootstrap.lua`, `lua/lazy-plugins.lua`
- Plugin specs live in two places: `lua/kickstart/plugins/` (upstream-provided) and `lua/custom/plugins/` (local additions)

## Plugin manager

- **lazy.nvim** — bootstrapped automatically by `lua/lazy-bootstrap.lua` (no manual install needed)
- `lazy-lock.json` is **gitignored** (upstream convention; don't commit changes to it)

## Formatting & linting

- **stylua** for Lua formatting — CI checks it on PRs. Config at `.stylua.toml`:
  - 2-space indent, 160 col width, single quotes, no parentheses, always collapse simple statements
  - Run: `stylua .`
- **conform.nvim** auto-formats lua/go on `BufWritePre` (goimports + gofumpt for Go)
- **none-ls.nvim** also registers formatters (stylua, prettier, goimports, isort, black, terraform_fmt) — redundant with conform
- **nvim-lint** lints markdown (markdownlint) and ansible (ansible_lint) on BufEnter/BufWritePost/InsertLeave

## Key conventions

- Leader: `<Space>`
- Nerd Font is assumed (`vim.g.have_nerd_font = true`)
- Catppuccin is the active colorscheme (with `transparent_background = true`)
- `jk` in insert mode → `<Esc>`

## Redundant/overlapping tools (don't add more)

- **Conform** + **none-ls** both provide formatting
- **Telescope** + **Snacks picker** both provide fuzzy finding
- **mini.statusline** + **lualine.nvim** both provide statusline (lualine wins, loaded later)
- **Noice** + **Snacks notifier** + **nvim-notify** all provide notification UI
- **tokyonight** + **catppuccin** + **gruvbox** colorschemes all loaded (catppuccin active)

## Go development

Heavy Go orientation: gopls (extensive config), delve debugger, gomodifytags, gotests, impl, iferr, gofumpt, goimports all auto-installed via mason-tool-installer.

## No tests, no build step

This is a Neovim config. No test framework, no build step. Just edit Lua files and restart/reload Neovim.

## OpenCode.nvim

Custom plugin `sudo-tee/opencode.nvim` is installed — depends on blink.cmp (completion) and snacks.nvim (picker). Render-markdown configured for `opencode_output` filetype.
