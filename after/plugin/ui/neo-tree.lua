local opts = {
    noremap = true,
    silent = true
}
vim.api.nvim_set_keymap("n", "<C-b>", ":Neotree toggle<CR>", opts)

-- NeoTreeの設定
require('neo-tree').setup({
    window = {
        position = "left",
        width = 25
    },

})

vim.cmd [[
    if argc() > 0
        au VimEnter * Neotree toggle
        au VimEnter * Neotree toggle
    endif
 
    highlight NeoTreeNormal guibg=#1b1b1b
    highlight NeoTreeNormalNC guibg=#1b1b1b
]]

