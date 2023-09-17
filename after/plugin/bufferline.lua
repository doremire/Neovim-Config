require'bufferline'.setup()

local map = vim.api.nvim_set_keymap
local opts = {
    noremap = true,
    silent = true
}

-- 新しいバッファを作成して移動 (<C-n>)
map('n', '<C-m>', '<Cmd>enew<CR>', opts)
map('n', '<C-j>', '<Cmd>BufferLineCyclePrev<CR>', opts)
map('n', '<C-k>', '<Cmd> BufferLineCycleNext<CR>', opts)
map('n', '<leader>e', '<Cmd>bd<CR>', opts)

-- Ctrl+s で保存
map('n', '<C-l>', ':w<CR>', opts)
-- Ctrl+z で取り消し (undo)
map('n', '<C-z>', ':undo<CR>', opts)
-- Ctrl+y でやり直し (redo)
map('n', '<C-y>', ':redo<CR>', opts)




