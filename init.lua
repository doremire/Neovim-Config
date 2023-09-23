local function setup_neovim()
    -- Jetpackがインストールされているかを確認
    local f = io.open("~/.local/share/nvim/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim", "r")
    if not f then
        -- Jetpackが入っていなかったらインストール
        os.execute(
            'curl -fLo ~/.local/share/nvim/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim')
    else
        f:close()
    end

    -- プラグインのファイルを読み込み
    require("plugin")

    -- プラグインをインストール
    local jetpack = require('jetpack')
    for _, name in ipairs(jetpack.names()) do
        if not jetpack.tap(name) then
            jetpack.sync()
            print("セットアップが完了しました。2秒後にNeoVimを閉じます。")
            vim.cmd("sleep 2")
            vim.api.nvim_command('q')
            vim.api.nvim_command('q')
            break
        end
    end
end

-- 実行
setup_neovim()

local paths = {
    "remap",
    "set",
    "mappings",
    "auto"
}
for _, path in ipairs(paths) do
    require(path)
end

-- カーソルがHTMLファイル内にあることを確認してから展開
if vim.bo.filetype == 'html' then
    vim.cmd('normal! O<!DOCTYPE html>')
    vim.cmd('normal! o<html lang="en">')
    vim.cmd('normal! o<head>')
    vim.cmd('normal! o    <meta charset="UTF-8">')
    vim.cmd('normal! o    <meta name="viewport" content="width=device-width, initial-scale=1.0">')
    vim.cmd('normal! o    <title>Document</title>')
    vim.cmd('normal! o</head>')
    vim.cmd('normal! o<body>')
    vim.cmd('normal! o')
    vim.cmd('normal! o</body>')
    vim.cmd('normal! o</html>')
end
