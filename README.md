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

| プラグイン名                            | GitHub リンク                                                        | 説明                                           |
| --------------------------------------- | -------------------------------------------------------------------- | ---------------------------------------------- |
| vim-jetpack                             | [リンク](tani/vim-jetpack)                                           | Vimの拡張パッケージマネージャー                |
| Telescope.nvim                          | [リンク](https://github.com/nvim-telescope/telescope.nvim)           | ファイルとバッファの検索・表示ツール           |
| rose-pine/neovim                        | [リンク](https://github.com/rose-pine/neovim)                        | Neovimの色テーマ                               |
| folke/trouble.nvim                      | [リンク](https://github.com/folke/trouble.nvim)                      | Neovimのエラー・警告表示ツール                |
| nvim-treesitter/nvim-treesitter         | [リンク](https://github.com/nvim-treesitter/nvim-treesitter)         | 構文ハイライトとテキストオブジェクトの強化     |
| nvim-treesitter/playground              | [リンク](https://github.com/nvim-treesitter/playground)              | ソースコードのASTビューア                    |
| theprimeagen/harpoon                    | [リンク](https://github.com/theprimeagen/harpoon)                    | クイックファイル切り替えツール                |
| theprimeagen/refactoring.nvim           | [リンク](https://github.com/theprimeagen/refactoring.nvim)           | Neovimのコードリファクタリング支援ツール      |
| mbbill/undotree                         | [リンク](https://github.com/mbbill/undotree)                         | undo履歴をツリー形式で表示                   |
| tpope/vim-fugitive                      | [リンク](https://github.com/tpope/vim-fugitive)                      | VimとNeovimのGitクライアント                 |
| nvim-treesitter/nvim-treesitter-context | [リンク](https://github.com/nvim-treesitter/nvim-treesitter-context) | アクティブなコードコンテキストのハイライト    |
| VonHeikemen/lsp-zero.nvim               | [リンク](https://github.com/VonHeikemen/lsp-zero.nvim)               | 軽量なLSPクライアント                        |
| folke/zen-mode.nvim                     | [リンク](https://github.com/folke/zen-mode.nvim)                     | 集中作業モード                               |
| github/copilot.vim                      | [リンク](https://github.com/github/copilot.vim)                      | GitHub CopilotのNeovimサポート               |
| eandrju/cellular-automaton.nvim         | [リンク](https://github.com/eandrju/cellular-automaton.nvim)         | セルオートマトンのビジュアル表現              |
| laytan/cloak.nvim                       | [リンク](https://github.com/laytan/cloak.nvim)                       | 選択したテキストの隠蔽                       |
| nvim-lualine/lualine.nvim               | [リンク](https://github.com/nvim-lualine/lualine.nvim)               | ステータスラインカスタマイズツール            |
| utilyre/barbecue.nvim                   | [リンク](https://github.com/utilyre/barbecue.nvim)                   | カスタマイズ可能なステータスバー              |
| nvim-tree/nvim-web-devicons             | [リンク](https://github.com/nvim-tree/nvim-web-devicons)             | Neovim用のファイルアイコン                   |
| lewis6991/gitsigns.nvim                 | [リンク](https://github.com/lewis6991/gitsigns.nvim)                 | Gitの変更をサイドバーでハイライト             |
| romgrk/barbar.nvim                      | [リンク](https://github.com/romgrk/barbar.nvim)                      | カスタマイズ可能なタブバー                   |
| folke/which-key.nvim                    | [リンク](https://github.com/folke/which-key.nvim)                    | キーバインドのヘルパー                       |
| lukas-reineke/indent-blankline.nvim     | [リンク](https://github.com/lukas-reineke/indent-blankline.nvim)     | インデントガイドライン表示ツール              |
| nvim-neo-tree/neo-tree.nvim             | [リンク](https://github.com/nvim-neo-tree/neo-tree.nvim)             | サイドバーにファイルツリーを表示              |
| j-hui/fidget.nvim                       | [リンク](https://github.com/j-hui/fidget.nvim)                       | ビジュアル効果とアニメーション                |
| lsp_lines.nvim                          | [リンク](https://git.sr.ht/~whynothugo/lsp_lines.nvim)               | LSP情報をラインに表示                       |
| norcalli/nvim-colorizer.lua             | [リンク](https://github.com/norcalli/nvim-colorizer.lua)             | カラーコードのオンスクリーンハイライト        |
| windwp/nvim-autopairs                   | [リンク](https://github.com/windwp/nvim-autopairs)                   | 括弧などの自動ペア挿入                       |
| daltonmenezes/aura-theme                | [リンク](https://github.com/daltonmenezes/aura-theme)                | Neovimのカラーテーマ                         |
| folke/noice.nvim                        | [リンク](https://github.com/folke/noice.nvim)                        | コマンドラインノイズリダクションツール       |


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
