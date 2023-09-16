-- カスタムテーマの設定
local custom_colors = {
    normal = {
        a = {
            bg = '#a277ff',
            fg = '#1f1a27'
        }, -- 入力モード
        b = {
            bg = '#1f1a27',
            fg = '#adacae'
        },
        c = {
            bg = '#1f1a27',
            fg = '#adacae'
        }
    }
}

-- lualineの設定
require'lualine'.setup {
    options = {
        theme = custom_colors,
        section_separators = {'', ''},
        component_separators = {'', ''}
    },
    sections = {
        -- 左側の設定
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {{
            'diagnostics',
            sources = {'nvim_lsp'}
        }, 'progress'},
        -- 右側の設定
        lualine_x = {function()
            local line = vim.fn.line('.')
            local col = vim.fn.col('.')
            return string.format("行 %d、列 %d", line, col)
        end, function()
            local sw = vim.api.nvim_get_option('shiftwidth')
            return string.format("スペース: %s", sw)
        end, function()
            local encoding = vim.api.nvim_get_option('encoding')
            if encoding == 'utf-8' then
                return 'UTF-8'
            else
                return encoding:upper()
            end
        end, function()
            local ff = vim.api.nvim_buf_get_option(0, 'fileformat')
            if ff == "unix" then
                return "LF"
            elseif ff == "dos" then
                return "CRLF"
            else
                return ff:upper()
            end
        end, 'filetype'},
        lualine_y = {},
        lualine_z = {}
    }
}
