--nvim-tree project view
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true, desc = "Toggle NvimTree" })

--fugitive.lua keymaps
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status (Fugitive)" })

-- harpoon keymaps
local mark = require "harpoon.mark"
local ui = require "harpoon.ui"
local term = require "harpoon.term"
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu, { desc = "Harpoon menu" })
vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon add file" })
vim.keymap.set("n", "<C-j>", ui.nav_next, { desc = "Harpoon next" })
vim.keymap.set("n", "<C-k>", ui.nav_prev, { desc = "Harpoon prev" })
vim.keymap.set("n", "<C-t>", function() term.gotoTerminal(1) end, { desc = "Harpoon terminal" })

-- lsp keymaps
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP hover" })
vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, { desc = "Workspace symbol" })
vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, { desc = "Open diagnostic" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, { desc = "References" })
vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, { desc = "Rename symbol" })
