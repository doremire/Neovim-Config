-- Packer.nvim v1
vim.cmd('packadd vim-jetpack')
require('jetpack.packer').startup(function(use)
    -- Packer can manage itself
    use {'tani/vim-jetpack'} -- bootstrap, Packer管理用のプラグイン

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = {{'nvim-lua/plenary.nvim'}} -- ファイル検索・選択UI
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            -- vim.cmd('colorscheme rose-pine')
        end -- 色テーマ
    })

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false
            }
        end -- エラーや警告などのトラブルを表示
    })

    use({
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({
                with_sync = true
            })
            ts_update()
        end -- 構文ハイライトとテキストオブジェクトの改善
    })
    use("nvim-treesitter/playground") -- treesitterの実験場
    use("theprimeagen/harpoon") -- マークとワークスペースの管理
    use("theprimeagen/refactoring.nvim") -- リファクタリング支援
    use("mbbill/undotree") -- undoのツリー表示
    use("tpope/vim-fugitive") -- Git操作のためのプラグイン
    use("nvim-treesitter/nvim-treesitter-context") -- 現在のコンテキストを表示

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {{'neovim/nvim-lspconfig'}, -- LSPサポート
        {'williamboman/mason.nvim'}, -- Masonビルドツールのサポート
        {'williamboman/mason-lspconfig.nvim'}, -- Mason LSP設定
        {'hrsh7th/nvim-cmp'}, -- 自動補完
        {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'}, {'saadparwaiz1/cmp_luasnip'}, {'hrsh7th/cmp-nvim-lsp'},
                    {'hrsh7th/cmp-nvim-lua'}, {'L3MON4D3/LuaSnip'}, -- スニペットサポート
        {'rafamadriz/friendly-snippets'} -- 豊富なスニペット集
        }
    }

    use("folke/zen-mode.nvim") -- 集中モードプラグイン
    use("github/copilot.vim") -- GitHub Copilotのサポート
    use("eandrju/cellular-automaton.nvim") -- セルオートマトン
    use("laytan/cloak.nvim") -- テキストを隠すためのモード

    ------------------------------------------------------------------------------

    use {
        'nvim-lualine/lualine.nvim',
        requires = {'nvim-tree/nvim-web-devicons' -- opt = true
        }
    }

    use({
        "utilyre/barbecue.nvim",
        -- tag = "*",
        requires = {"SmiteshP/nvim-navic", "nvim-tree/nvim-web-devicons" -- optional dependency
        },
        after = "nvim-web-devicons", -- keep this if you're using NvChad
        config = function()
            require("barbecue").setup()
        end
    })

    use 'nvim-tree/nvim-web-devicons'
    use 'lewis6991/gitsigns.nvim'
    use({
        'romgrk/barbar.nvim',
        config = function()
            require("barbar").setup()
        end
    })

    -- Lua
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {}
        end
    }

    use({
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            vim.opt.list = true
            vim.opt.listchars:append "space:⋅"
            vim.opt.listchars:append "eol:↴"

            require("indent_blankline").setup {
                space_char_blankline = " ",
                show_current_context = true,
                show_current_context_start = true
            }
        end
    })

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim"}
    }

    use {
        'j-hui/fidget.nvim',
        tag = 'legacy',
        config = function()
            require("fidget").setup()
        end
    }

    use({
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        config = function()
            require("lsp_lines").setup()
        end
    })

    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require("colorizer").setup()
        end
    }

    use {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

    use({
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end
    })

    use {
        'nvim-treesitter/nvim-treesitter',
        -- run = ':TSUpdate'
    } -- Recommended, not required.
    use {
        'daltonmenezes/aura-theme',
        rtp = 'packages/neovim',
        config = function()
            vim.cmd("colorscheme aura-soft-dark") -- Or any Aura theme available
        end
    }

    use({
        "folke/noice.nvim",
        config = function()
            require("noice").setup({
                cmdline = {
                    format = {
                        -- search iconの文字化け対策
                        search_down = {
                            kind = "search",
                            pattern = "^/",
                            icon = " ",
                            lang = "regex"
                        },
                        search_up = {
                            kind = "search",
                            pattern = "^%?",
                            icon = " ",
                            lang = "regex"
                        }
                    }
                },
                lsp = {
                    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
                    override = {
                        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                        ["vim.lsp.util.stylize_markdown"] = true,
                        ["cmp.entry.get_documentation"] = true
                    }
                },
                -- you can enable a preset for easier configuration
                presets = {
                    bottom_search = false, -- use a classic bottom cmdline for search
                    command_palette = false, -- position the cmdline and popupmenu together
                    long_message_to_split = true, -- long messages will be sent to a split
                    inc_rename = false, -- enables an input dialog for inc-rename.nvim
                    lsp_doc_border = false -- add a border to hover docs and signature help
                }
            })

        end,
        requires = {"MunifTanjim/nui.nvim", "rcarriga/nvim-notify"}
    })

end)
