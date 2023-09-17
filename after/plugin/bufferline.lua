require 'bufferline'.setup()

local map = vim.api.nvim_set_keymap
local opts = {
    noremap = true,
    silent = true
}

map('n', '<C-j>', '<Cmd>BufferLineCyclePrev<CR>', opts)
map('n', '<C-k>', '<Cmd> BufferLineCycleNext<CR>', opts)
map('n', '<leader>e', '<Cmd>bd<CR>', opts)
