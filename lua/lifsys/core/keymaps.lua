-- set leader key to space
vim.g.mapleader = ' '

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set('i', 'jk', '<ESC>', { desc = 'Exit insert mode with jk' })

-- clear search highlights
keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlights' })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment number' }) -- increment
keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement number' }) -- decrement

-- window management
keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' }) -- split window vertically
keymap.set('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' }) -- split window horizontally
keymap.set('n', '<leader>se', '<C-w>=', { desc = 'Make splits equal size' }) -- make split windows equal width & height
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' }) -- close current split window

keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = 'Open new tab' }) -- open new tab
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = 'Close current tab' }) -- close current tab
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = 'Go to next tab' }) --  go to next tab
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = 'Go to previous tab' }) --  go to previous tab
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' }) --  move current buffer to new tab
keymap.set('n', '<F9>', '<cmd>q<CR>', { desc = 'Quick-quit' })
keymap.set('n', '<F10>', '<cmd>w<CR>', { desc = 'Write' })
keymap.set('n', '<F11>', '<cmd>wq!<CR>', { desc = 'Write-Quit' })
keymap.set('n', '<F12>', '<cmd>qa!<CR>', { desc = 'Quit' })
keymap.set('n', '<C-h>', '<cmd>CTRL-W_h<CR>', { desc = 'Move L n-windows' })
-- vim.api.nvim_set_keymap('n', '<c-c>', '"*y :let @+=@*<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<c-v>', '"+p', { noremap = true, silent = true })
