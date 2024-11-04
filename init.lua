vim.g.mapleader = " "
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.o.number = true
vim.o.relativenumber = true

require("config.lazy")
vim.cmd.colorscheme "catppuccin"
local builtin = require('telescope.builtin')

-- TELESCOPE
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- TREE-SITTER
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua","javascript"},
  highlight = { enable = true },
  indent = { enable == true },
})
vim.opt.foldmethod = 'expr'        -- Use an expression for folding
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'  -- Use Tree-sitter for the expression

-- NEOTREE
vim.keymap.set('n', '<leader>b', '<Cmd>Neotree filesystem reveal left<CR>')
vim.keymap.set('n', '<leader>B', '<Cmd>Neotree close<CR>')
