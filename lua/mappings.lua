local map = vim.api.nvim_set_keymap
local opts = {
    noremap = true,
    silent = true
}

-- 連続したjやkでノーマルモードに戻る
local mappings = {'jj', 'kj', 'jk', 'kk'}
for _, key in ipairs(mappings) do
    map('i', key, '<Esc>', opts)
end

-- Ctrl+zをUndoにマッピング
map('n', '<C-z>', ':undo<CR>', opts)

-- Ctrl+yをRedoにマッピング
map('n', '<C-y>', ':redo<CR>', opts)

-- Ctrl+sで保存
map('n', '<C-s>', ':w<CR>', opts)
map('i', '<C-s>', '<Esc>:w<CR>', opts)
