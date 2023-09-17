-- Aura Themeのカラーコード（例として以下のカラーコードを使用）
local aura_bg1 = "#282c34" -- これは例です。実際のカラーコードに置き換えてください。
local aura_bg2 = "#3a3f4b" -- これも例です。

vim.cmd("highlight Headline1 guibg=" .. aura_bg1)
vim.cmd("highlight Headline2 guibg=" .. aura_bg2)
vim.cmd("highlight CodeBlock guibg=" .. aura_bg1)
vim.cmd("highlight Dash guibg=" .. aura_bg1 .. " gui=bold")
vim.cmd("highlight Quote guibg=" .. aura_bg1)

require("headlines").setup {
    markdown = {
        headline_highlights = { "Headline1", "Headline2" },
        codeblock_highlight = "CodeBlock",
        dash_highlight = "Dash",
        quote_highlight = "Quote",
    },
    org = {
        headline_highlights = { "Headline1", "Headline2" },
        codeblock_highlight = "CodeBlock",
        dash_highlight = "Dash",
        quote_highlight = "Quote",
    },
    -- 他のファイルタイプも同様に設定してください。
}
