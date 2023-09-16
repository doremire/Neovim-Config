local opts = {
    noremap = true,
    silent = true
}
local term_opts = {
    silent = true
}
local keymap = vim.keymap.set

keymap("n", "<C-b>", ":Neotree toggle<Return>", opts)
