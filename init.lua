local function setup_neovim()
    -- Jetpackがインストールされているかを確認
    local jetpackfile = vim.fn.stdpath('data') .. '/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim'
    local jetpackurl = "https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim"
    if vim.fn.filereadable(jetpackfile) == 0 then
        vim.fn.system(string.format('curl -fsSLo %s --create-dirs %s', jetpackfile, jetpackurl))
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
}

for _, path in ipairs(paths) do
    require(path)
end
