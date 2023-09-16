require'bufferline'.setup()
local map = vim.api.nvim_set_keymap
local opts = {
    noremap = true,
    silent = true
}

-- Move to previous/next
map('n', '<C-j>', '<Cmd>BufferPrevious<CR>', opts) -- Ctrl+jで前のBufferに移動
map('n', '<C-k>', '<Cmd>BufferNext<CR>', opts) -- Ctrl+kで次のBufferに移動
-- Close buffer
map('n', '<leader>e', '<Cmd>BufferClose<CR>', opts) -- <leader>+eでBufferを削除
