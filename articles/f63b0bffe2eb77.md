---
title: "開発における3種の神器"
emoji: "⚔️"
type: "tech"
topics: ["mac","raycast","warp","tableplus"]
published: true
---

*この記事は約 10 分で読めます。*

# 結論

- **Raycast**（ランチャー）
- **Warp**（ターミナル）
- **TablePlus**（SQL クライアント）

# はじめに

こんにちは。バックエンドエンジニアの「りょう」と申します。

突然ですがみなさんは普段どんなツールを使用して開発していますか？

私は普段から Zenn や SNS で注目されているツールをチェックしており、最近「これ最高！！」と思えるツールに出会えたので共有します。

もちろん他におすすめのツールがあれば、ぜひコメントで教えてください！

間違いなどありましたらコメント等でご指摘いただけると幸いです。

# Raycast

https://www.raycast.com/

Raycast は軽量かつ高速で拡張可能なランチャーです。

必要な機能だけをインストールできるので、設定や管理がシンプルで非常に使いやすいです。

Alfred の重課金ユーザーさえも乗り換えるほど人気で注目されているツールです。

主な機能を紹介します。

- [アプリケーションやファイルの検索](https://www.raycast.com/extensions/file-search)
  - 画面右側に検索結果のファイルのプレビューを表示
  - 私は「`Control + Space`」で Raycast を起動するよう設定しています
  ![Raycastのファイル検索の実行画面](/images/raycast_file_search.png)
- [クリップボード履歴の管理](https://www.raycast.com/extensions/clipboard-history)
  - クリップボード履歴の検索だけでなく、画面右側に URL や画像、カラーコードのプレビューを表示
  - 私は「`Shift + Space`」のショートカットで起動するよう設定しています
  ![Raycastのクリップボード履歴の実行画面](/images/raycast_clip_board_cmd.png)
- [スニペットの管理](https://www.raycast.com/extensions/snippets)
  - メールの定型文やコードの一部など、頻繁に使用するテキストをその場で自動展開
  - 私は `mymail` と打つだけで、自動でメールアドレスに変換されるように設定しています
  ![Raycastのシステムコマンドの実行画面](/images/raycast_snippets_cmd.png)
- [システムコマンドの実行](https://www.raycast.com/extensions/system)
  - 音量のコントールやスリープ、再起動など
  ![Raycastのシステムコマンドの実行画面](/images/raycast_system_cmd.png)
- [計算](https://www.raycast.com/extensions/calculator)
  - 数式の計算、単位の変換、日・月・年の差の計算などを自然言語で行える
  ![Raycastの計算コマンドの実行画面](/images/raycast_calc_cmd.png)
- [カレンダー](https://www.raycast.com/extensions/calendar)
  - スケジュール管理ができ、Zoom や Google Meet などに直接参加できる
  - メニューバーに次のイベントまでの残り時間を表示可能
  ![Raycastのカレンダーの実行画面](/images/raycast_calender.png)
- [Window Management](https://www.raycast.com/extensions/window-management)
  - キーボードから手を離すことなく、フォーカスしたウィンドウのサイズ変更、再編成、移動を簡単に行える
  ![RaycastのWindow Managementの実行結果画面](/images/raycast_window_management.png)
- [拡張機能の追加](https://www.raycast.com/store)
  - Chrome のようにストアから様々な拡張機能をインストール可能
  - Raycast から AWS・GitHub・Notion・Google Drive へのアクセス、ネットのスピードテスト、ダミーデータの生成など、様々な拡張機能がある
  ![Raycastのストア画面](/images/raycast_store.png)

補足記事はこちら。

https://zenn.dev/yum3/articles/i_raycast_or_alfred

https://zenn.dev/toono_f/articles/45d2a49650ebf9

# Warp

https://www.warp.dev/

Warp は Rust 製のモダンなターミナルです。

特徴としては「選択、カーソル位置、補完など、モダンな**テキストエディター**のようなターミナル」という点です。

また、Rust ネイティブなアプリということで、様々な有名エディターより動作が高速であると証明されています。
<!-- textlint-disable rousseau -->
![Warpのベンチマーク結果のグラフ](/images/warp_benchmark.png)
*[&copy;docs.warp.dev](https://docs.warp.dev/how-does-warp-compare/performance)*
<!-- textlint-disable rousseau -->
主な機能を紹介します。

- [コマンドの入出力をブロック単位で管理](https://docs.warp.dev/features/blocks)
  - コマンドの入出力のコピーや共有が簡単に実現
  - 特定のコマンドを探すための、スクロール地獄から開放される
  ![WarpでBlockを強調している画面](/images/warp_block.png)
- [入力補完&シンタックスハイライト](https://docs.warp.dev/features/completions)
  - 入力候補が表示されるため、長いコマンドもスラスラ書ける
  - Warp のデフォルト機能として組み込まれているので、別途プラグインを導入する必要がない
  ![Warpの入力補完を表示している画面](/images/warp_suggestion.png)
- [文字列の検索](https://docs.warp.dev/features/find)
  - 正規表現も使用でき、特定ブロックに対してのみの検索も可能
  - `cat` コマンドやログ調査の際に活用されそう
  ![Warpの文字列検索している画面](/images/warp_find.png)
- [通知](https://docs.warp.dev/features/notifications)
  - 実行したコマンドが、あらかじめ設定した秒数を経過した場合に通知される
  - 個人的に Docker などのビルドの終了を通知してくれるので超便利
  ![Warpの通知画面](/images/warp_notification.png)
- [SSH 先での Warpの機能の利用](https://docs.warp.dev/features/ssh)
  - SSH 先でも入力補完や入力履歴の機能が使用可能
  <!-- textlint-disable rousseau -->
  ![Warp のSSH接続の画面](/images/warp_ssh.png)
  *[&copy;docs.warp.dev](https://docs.warp.dev/features/ssh)*
  <!-- textlint-enable rousseau -->
- [コマンドパレット](https://docs.warp.dev/features/command-palette)
  - 「`Cmd + P`」を実行することでコマンドパレットが使用可能
  - 様々なショートカットや機能を簡単に検索できる
  ![Warpのコマンドパレットの画面](/images/warp_command_palette.png)
- [テーマの変更](https://docs.warp.dev/features/themes)
  - テーマのカスタマイズが可能
  ![Warpのテーマ変更の画面](/images/warp_change_theme.png)

補足記事はこちら。

https://zenn.dev/toono_f/articles/03cc961bfd64c1

https://zenn.dev/cohky/articles/warp-touched

# TablePlus

https://tableplus.com/

TablePlus は人気でモダンな SQL クライアントです。

実際「`もう一度使いたい SQL クライアントのランキング`」において、トップ 3 に並ぶ実力です。

（残念ながら 1 位の [Arctype](https://arctype.com/) は開発が終了してしまいました）
<!-- textlint-disable rousseau -->
![もう一度使いたいSQLクライアントランキング](/images/tableplus_ranking.png)
*[&copy;stateofdb.com](https://stateofdb.com/sql-db-clients)*
<!-- textlint-disable rousseau -->
SQL クライアントがあれば、ターミナルから直接 SQL を実行するより効率よく作業が行えます。

主な機能を紹介します。

- [フィルター](https://docs.tableplus.com/gui-tools/filter)
  - データ一覧画面でフィルター機能が使用可能
  ![TablePlusでフィルター機能を利用している画面](/images/tableplus_filter.png)
- [テーブル構造](https://docs.tableplus.com/gui-tools/working-with-table/table#view-table-structure)
  - 画面下の `Structure` をクリックしテーブル構造が確認できる
  ![TablePlusのテーブル構造の画面](/images/tableplus_table_structure.png)
- [オートコンプリート&シンタックスハイライト](https://docs.tableplus.com/query-editor/autocomplete)
  - 可読性高く、高速にクエリを記述可能
  - テーブル名も補完される
  ![TablePlusでクエリを入力している画面](/images/tableplus_suggestion.png)
- [クエリのフォーマット](https://docs.tableplus.com/query-editor/query-reformat)
  - クエリ実行画面で `Beautify` をクリックすると、クエリが整形される
  ![TablePlusでクエリを入力している画面](/images/tableplus_format.png)
- [インポート&エクスポート](https://docs.tableplus.com/gui-tools/import-and-export)
  - CSV と Dump ファイルのインポートとエクスポートが可能
  ![TablePlusのデータのエクスポート画面](/images/tableplus_export.png)
- [クエリの履歴](https://docs.tableplus.com/query-editor/query-history)
  - 履歴からクエリを再実行できる
  ![TablePlusのクエリ履歴の画面](/images/tableplus_query_history.png)
- [コードプレビュー](https://docs.tableplus.com/gui-tools/code-review-and-safemode/code-preview)
  - GUI で行った操作をクエリに変換
  ![TablePlusのコードプレビューの画面](/images/tableplus_code_preview.png)
- [変更のコミット](https://docs.tableplus.com/gui-tools/code-review-and-safemode/commit-changes)
  - GUI で行った操作は「`Commit your changes`」をクリックすることで、DB に反映される
  ![TablePlusの変更のコミットの画面](/images/tableplus_commit_changes.png)
- [レスポンスのストリーミングと非同期ロード](https://docs.tableplus.com/query-editor/streaming-results-and-async-loading)
  - 例えば実行に時間がかかる 1 万件の Select 処理を実行した際、1 万件分の全データ取得を待たずに、取得されたデータを次々に表示
  - 実行結果のロードもバックグラウンドで行われるため、クエリが完全に終了されるまで待つ必要がない

# 終わりに

以上、私の考える「開発における 3 種の神器」の紹介でした。

みなさんの「3 種の神器」も気になるので、ぜひコメントで教えてください！

# 関連記事

https://zenn.dev/ryo_f/articles/27f223203481ef
