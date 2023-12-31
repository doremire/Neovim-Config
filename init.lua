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

local paths = { "remap", "set", "mappings", "auto" }
for _, path in ipairs(paths) do
    require(path)
end

-- init.lua
-- status.luaを読み込む
local status = require('dev.status')

-- 起動時に起動回数を増やす
status.increment_launch()

-- カスタムコマンドを作る
vim.api.nvim_exec([[
  command! ShowStatus lua require'dev.status'.show_status()
]], false)
