<div align="center">

<br>
<br>

<img src="https://emoji2svg.deno.dev/api/🧙‍♂️" alt="eyecatch" height="100">
<h1 align="center">Neovim-Config🔮</h1>

<br>
<br>

<div align="center"><p>
<img alt="Commit Activity" src="https://img.shields.io/github/commit-activity/m/doremire/Neovim-Config?style=for-the-badge&logo=instatus&color=C9CBFF&logoColor=D9E0EE&labelColor=302D41" />
<img alt="Last Commit" src="https://img.shields.io/github/last-commit/doremire/Neovim-Config?style=for-the-badge&logo=instatus&color=ee999f&logoColor=D9E0EE&labelColor=302D41" />
<img src="https://img.shields.io/github/license/doremire/Neovim-Config?style=for-the-badge&logo=instatus&color=c69ff5&logoColor=D9E0EE&labelColor=302D41" alt="GitHub License"><br>
<img src="https://img.shields.io/github/watchers/doremire/Neovim-Config?style=for-the-badge&logo=bilibili&color=F5E0DC&logoColor=D9E0EE&labelColor=302D41" alt="Codecov coverage">
<img src="https://img.shields.io/github/repo-size/doremire/Neovim-Config?color=%23DDB6F2&label=SIZE&logo=instatus&style=for-the-badge&logoColor=D9E0EE&labelColor=302D41" alt="GitHub code size">
</div>

<br>
<br>

</div>

## ⚠️ 注意事項

- この設定は作者個人の好みに基づいています。誰でも使用できますが、作者以外の環境での動作は保証されません。
- Vim/Nvim の経験が半年程度のものであり、高度な設定は含まれていません。エキスパートユーザー向けではありません。
- プラグインや設定に変更を加える前に、設定ファイルのバックアップを作成することを強くお勧めします。
- この設定ファイルは特定のニーズに合わせて調整されており、作者の好みに基づいています。設定をカスタマイズする際には、自分の作業フローに合わせて変更してください。
- 作者はこのプロジェクトに対するサポートを提供する義務を負っていません。問題が発生した場合でも、解決策を保証することはできませんが、GitHub リポジトリで問題を報告していただければ対応するかもしれません。

この設定を使用する前に、上記の事項を十分に理解し、自己責任でお使いいただくことをお願い申し上げます。設定ファイルに関する質問や提案は常に歓迎しますが、サポートは限定的です。


### 📜 ライセンス

このプロジェクトは [MIT ライセンス](LICENSE) の下で提供されています。詳細についてはライセンスファイルをご確認ください。

<br>
<br>

```

    📂 ~/.config/nvim
    ├── 📁 after/plugin
    │  └── 🌑 Plugin settings
    ├── 📂 lua
    │  ├── 🌑 plugin.lua
    │  ├── 🌑 remap.lua
    │  ├── 🌑 set.lua
    │  └── Will add in the future ...
    └── 🌑 init.lua

```

| プラグイン名                            | GitHub リンク                                                        | 説明                                       |
| --------------------------------------- | -------------------------------------------------------------------- | ------------------------------------------ |
| vim-jetpack                             | [リンク](tani/vim-jetpack)                                           | パッケージマネージャー                     |
| Telescope.nvim                          | [リンク](https://github.com/nvim-telescope/telescope.nvim)           | ファイル検索・選択                         |
| rose-pine/neovim                        | [リンク](https://github.com/rose-pine/neovim)                        | 色テーマ                                   |
| folke/trouble.nvim                      | [リンク](https://github.com/folke/trouble.nvim)                      | エラーや警告の表示                         |
| nvim-treesitter/nvim-treesitter         | [リンク](https://github.com/nvim-treesitter/nvim-treesitter)         | 構文ハイライトとテキストオブジェクトの改善 |
| nvim-treesitter/playground              | [リンク](https://github.com/nvim-treesitter/playground)              | AST コード                                 |
| theprimeagen/harpoon                    | [リンク](https://github.com/theprimeagen/harpoon)                    | マークとワークスペースの管理               |
| theprimeagen/refactoring.nvim           | [リンク](https://github.com/theprimeagen/refactoring.nvim)           | リファクタリング支援                       |
| mbbill/undotree                         | [リンク](https://github.com/mbbill/undotree)                         | undo のツリー表示                          |
| tpope/vim-fugitive                      | [リンク](https://github.com/tpope/vim-fugitive)                      | Git 操作のためのプラグイン                 |
| nvim-treesitter/nvim-treesitter-context | [リンク](https://github.com/nvim-treesitter/nvim-treesitter-context) | 現在のコンテキストを表示                   |
| VonHeikemen/lsp-zero.nvim               | [リンク](https://github.com/VonHeikemen/lsp-zero.nvim)               | LSP サポート                               |
| folke/zen-mode.nvim                     | [リンク](https://github.com/folke/zen-mode.nvim)                     | 集中モードプラグイン                       |
| github/copilot.vim                      | [リンク](https://github.com/github/copilot.vim)                      | GitHub Copilot のサポート                  |
| eandrju/cellular-automaton.nvim         | [リンク](https://github.com/eandrju/cellular-automaton.nvim)         | セルオートマトン                           |
| laytan/cloak.nvim                       | [リンク](https://github.com/laytan/cloak.nvim)                       | テキストを隠すためのモード                 |
| nvim-lualine/lualine.nvim               | [リンク](https://github.com/nvim-lualine/lualine.nvim)               | ステータスライン                           |
| utilyre/barbecue.nvim                   | [リンク](https://github.com/utilyre/barbecue.nvim)                   | ステータスバー                             |
| nvim-tree/nvim-web-devicons             | [リンク](https://github.com/nvim-tree/nvim-web-devicons)             | アイコン                                   |
| lewis6991/gitsigns.nvim                 | [リンク](https://github.com/lewis6991/gitsigns.nvim)                 | Git の変更表示                             |
| romgrk/barbar.nvim                      | [リンク](https://github.com/romgrk/barbar.nvim)                      | タブバー                                   |
| folke/which-key.nvim                    | [リンク](https://github.com/folke/which-key.nvim)                    | キーバインディング                         |
| lukas-reineke/indent-blankline.nvim     | [リンク](https://github.com/lukas-reineke/indent-blankline.nvim)     | インデントライン                           |
| nvim-neo-tree/neo-tree.nvim             | [リンク](https://github.com/nvim-neo-tree/neo-tree.nvim)             | ファイルツリー                             |
| j-hui/fidget.nvim                       | [リンク](https://github.com/j-hui/fidget.nvim)                       | ページネーション                           |
| lsp_lines.nvim                          | [リンク](https://git.sr.ht/~whynothugo/lsp_lines.nvim)               | LSP 行ハイライト                           |
| norcalli/nvim-colorizer.lua             | [リンク](https://github.com/norcalli/nvim-colorizer.lua)             | カラーコードハイライト                     |
| windwp/nvim-autopairs                   | [リンク](https://github.com/windwp/nvim-autopairs)                   | 自動ペアリング                             |
| lewis6991/gitsigns.nvim                 | [リンク](https://github.com/lewis6991/gitsigns.nvim)                 | Git の変更表示                             |
| daltonmenezes/aura-theme                | [リンク](https://github.com/daltonmenezes/aura-theme)                | Lua                                        |
| folke/noice.nvim                        | [リンク](https://github.com/folke/noice.nvim)                        | コマンドラインツール                       |

**Thanks to all developers💜**

<br>
<br>

## スクリーンショット

![スクリーンショット](https://dummyimage.com/600x400/000/fff)

## 特徴

- モダンで美しい Neovim のインターフェース

  - **Visual Studio Code** Like な カスタムされたユーザーインターフェイスとキーバインド

- シンタックスハイライト、自動補完、スニペット、そしてさらに多くの機能を提供するプラグイン

  └─ あなたのニーズを満たします。

  - 完成された完璧なデザイン
  - より Neovim を好きになるでしょう。
  - 難しい事は何もありません

- シンプルなインストールとセットアッププロセス

  └─ 自動的なセットアップ

  - 自動的なプラグインマネージャのインストール(Linux 限定)
  - 初回起動時のプラグインの一括インストール
  - そうセットアップのやり方はこれだけ

  ```
  nvim
  ```

## TODO リスト

- [ ] 他 OS の対応
  - [ ] Windows の場合
  - [ ] macOS の場合
- [ ] スクリーンショットの撮影 

## 💖 Thanks and Links

- [ThePrimeagen/init.lua](https://github.com/ThePrimeagen/init.lua)
  
- [Aura-Theme](https://github.com/daltonmenezes/aura-theme/tree/main/packages/neovim)
It's the coolest theme!!!

<br>
<br>

**あとは楽しんで！**
<br>
  -- **Happy Coding!** 🚀 --

