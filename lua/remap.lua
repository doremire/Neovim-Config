local map = vim.keymap.map

-- マップリーダーをスペースに設定
vim.g.mapleader = " "

-- キーマッピングを設定
map("n", "<leader>pv", vim.cmd.Ex)
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- vim-with-me関連のキーマッピング
map("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
map("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- コピーアンドペーストの便利なキーマッピング
map("x", "<leader>p", [["_dP"]])

-- クリップボードを使用したコピーペースト
map({"n", "v"}, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

-- クリップボードを使用した削除
map({"n", "v"}, "<leader>d", [["_d"]])

-- <C-c>をエスケープにマップ
map("i", "<C-c>", "<Esc>")

-- Qキーを何もしないようにマップ
map("n", "Q", "<nop>")

-- ファイルフォーマットのキーマッピング
map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
map("n", "<leader>f", vim.lsp.buf.format)

-- クイックフィックスウィンドウとロケーションリストの移動
map("n", "<C-k>", "<cmd>cnext<CR>zz")
map("n", "<C-j>", "<cmd>cprev<CR>zz")
map("n", "<leader>k", "<cmd>lnext<CR>zz")
map("n", "<leader>j", "<cmd>lprev<CR>zz")

-- ワード全体で検索と置換
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- 実行ファイルに実行権限を与える
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", {
    silent = true
})

-- プラグインファイルの編集とPacker.nvimのリロード
map("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua")
map("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain")

-- ソースコードの再読み込み
map("n", "<leader><leader>", function()
    vim.cmd("so")
end)
