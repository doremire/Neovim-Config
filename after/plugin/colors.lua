require('rose-pine').setup({
    disable_background = true
})

function ColorMyPencils(color)
    -- color = color or "rose-pine"
    color = color or "aura-soft-dark"

    vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    vim.cmd([[
    hi NonText guifg=#444444
    hi Whitespace guifg=#444444
    hi IndentBlanklineChar guifg=#444444
    hi IndentBlanklineContextChar guifg=#6d6d6d
    hi IndentBlanklineSpaceChar guifg=#444444
    hi IndentBlanklineSpaceCharBlankline guifg=#6d6d6d
]])

end

ColorMyPencils()
