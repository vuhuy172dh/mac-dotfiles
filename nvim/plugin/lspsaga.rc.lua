local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup({})

-- saga.init_lsp_saga {}

local opts = { noremap = true, silent = true }

-- Hover doc
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)

-- lsp finder
vim.keymap.set('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', opts)

-- Signature help
vim.keymap.set('n', 'gs', '<Cmd>Lspsaga signature_help<CR>', opts)

-- Go to definition
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga goto_definition<CR>', opts)

-- Peek definition
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)

-- Rename with preview and select
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)

-- Show line diagnostics
vim.keymap.set('n', '<leader>cd', '<cmd>Lspsaga show_line_diagnostics<CR>', opts)

-- code action
vim.keymap.set({'n', 'v'}, "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
