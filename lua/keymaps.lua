-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>dm', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

--Misc keymap
vim.keymap.set("n", "<leader>w", "<cmd> w! <cr>", { desc = "Safe file in the current buffer" })

vim.keymap.set("n", "<leader>q", "<cmd> q <cr>", { desc = "Close current buffer" })

vim.keymap.set("n", "<leader>qb", "<cmd> BufferClose <cr>", { desc = "Close current buffer" })

vim.keymap.set("n", "<leader>qa", "<cmd> qa! <cr>", { desc = "Close all buffers and exit" })

vim.keymap.set("n", "<leader>wq", "<cmd> x <cr>", { desc = "Save and exit file" })

vim.keymap.set("n", "<leader>vs", "<cmd> vsplit <cr>", { desc = "Split window on vertical" })

-- Custom Plugins Keymaps
vim.keymap.set("n", "<leader>e", "<cmd> Neotree <cr>", { desc = "Open NeoTree" })

vim.keymap.set("n", "<leader>gg", "<cmd> LazyGit <cr>", { desc = "Open LazyGit" })

vim.keymap.set("n", "<leader>l", "<cmd> TmuxNavigateRight <cr>", { desc = "Jump to Right Split" })

vim.keymap.set("n", "<leader>h", "<cmd> TmuxNavigateLeft <cr>", { desc = "Jump to Left Split" })


--Back to normal mode using j j
vim.keymap.set("i", "jk", "<esc>")


-- Move cut to the _ register
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("v", "x", '"_x')

--Select All

vim.keymap.set("n", "<tab>", "<cmd> BufferNext <cr>", { desc = "Move to Next Tab" })

vim.keymap.set("n", "<space><tab>", "<cmd> BufferPrevious <cr>", { desc = "Move to Previous Tab" })
