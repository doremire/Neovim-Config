-- カスタム色設定
local custom_colors = {
    normal = {
        a = {
            bg = '#a277ff',
            fg = '#1f1a27'
        },
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

-- Lualine コンポーネントのためのヘルパー関数
local function location()
    return string.format("行%d、列%d", vim.fn.line('.'), vim.fn.col('.'))
end

local function spaces()
    return string.format("スペース:%s", vim.api.nvim_get_option('shiftwidth'))
end

local function get_encoding()
    local encoding = vim.api.nvim_get_option('encoding')
    return encoding == 'utf-8' and 'UTF-8' or encoding:upper()
end

local function get_fileformat()
    local formats = {
        unix = "LF",
        dos = "CRLF"
    }
    return formats[vim.api.nvim_buf_get_option(0, 'fileformat')] or vim.api.nvim_buf_get_option(0, 'fileformat'):upper()
end

-- Git情報の設定
local last_git_info, last_update_time = "", 0
local update_interval = 10

local function translate_time(time)
    local replacements = {
        ["second[s]* ago"] = "秒前",
        ["minute[s]* ago"] = "分前",
        ["hour[s]* ago"] = "時間前",
        ["day[s]* ago"] = "日前",
        ["week[s]* ago"] = "週間前",
        ["month[s]* ago"] = "ヶ月前",
        ["year[s]* ago"] = "年前"
    }

    for eng, jpn in pairs(replacements) do
        time = time:gsub("(%d+) " .. eng, "%1" .. jpn)
    end

    return time
end

-- Gitの最終コミット情報を日本語で取得
local function git_info_japanese()
    -- リポジトリの存在確認
    local handle = io.popen('git rev-parse --is-inside-work-tree 2>&1')
    local result = handle:read('*a')
    handle:close()
    if result:match('not a git repository') then
        return ''
    end

    if os.time() - last_update_time > update_interval then
        local name = vim.fn.system("git log -1 --pretty='%an'")
        local time = translate_time(vim.fn.system("git log -1 --pretty='%ar'"))
        last_git_info = string.format(" %s,%s", vim.fn.trim(name), vim.fn.trim(time))
        last_update_time = os.time()
    end
    return last_git_info
end

-- カスタムブランチ情報を取得
local function custom_branch()
    -- リポジトリの存在確認
    local handle = io.popen('git rev-parse --is-inside-work-tree 2>&1')
    local result = handle:read('*a')
    handle:close()
    if result:match('not a git repository') then
        return ' Not a git repository'
    end

    handle = io.popen('git rev-parse --abbrev-ref HEAD 2> /dev/null')
    local branch_name = handle:read("*a")
    handle:close()
    branch_name = branch_name:gsub("\n", "") -- 改行を削除

    if branch_name == "" or branch_name == "HEAD" then
        return ""
    else
        return " " .. branch_name .. "* "
    end
end

-- Lualineの設定
require'lualine'.setup {
    options = {
        theme = custom_colors,
        section_separators = {'', ''},
        component_separators = {'', ''}
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {custom_branch},
        lualine_c = {{
            'diagnostics',
            sources = {'nvim_lsp'},
            sections = {'error', 'warn', 'info', 'hint'}
        }},
        lualine_x = {git_info_japanese, location, spaces, get_encoding, get_fileformat, 'filetype'},
        lualine_y = {},
        lualine_z = {}
    }
}
