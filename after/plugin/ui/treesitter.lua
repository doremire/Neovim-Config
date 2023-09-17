-- プラグインのロードが完了するのを待つ
vim.cmd('packadd! nvim-treesitter')

-- nvim-treesitterプラグインの設定
require'nvim-treesitter.configs'.setup {
    ensure_installed = {"vimdoc", "javascript", "typescript", "c", "lua", "rust"},
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    }
}

-- nvim-treesitterのアップデート
vim.cmd(':TSUpdate')
