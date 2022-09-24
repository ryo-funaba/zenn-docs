# ![zenn](./icon/zenn.png) zenn-docs

<a href="https://github.com/ryo-funaba/zenn-docs/actions/workflows/lint.yml">
    <img src="https://github.com/ryo-funaba/zenn-docs/actions/workflows/lint.yml/badge.svg?branch=main&event=push" alt="lint badge">
</a>

Zenn の記事や本を管理するリポジトリです。

記事や本の管理に zenn-cli を使用しています。

## 環境構築

* 前提条件
  * GitHub と SSH 接続する設定を済ませていること
  * Docker(v20.10.17 以上) がインストールされていること
  * Docker compose(v2.7.0 以上) がインストールされていること

1. リポジトリをクローン

   ```bash
   git clone github:ryo-funaba/zenn-docs.git
   ```

2. トップディレクトリに移動

   ```bash
   cd zenn-docs
   ```

3. Docker image を作成

   ```bash
   make build
   ```

4. Docker Compose を起動

   ```bash
   make up
   ```

5. ブラウザでプレビューを確認する

    * ポート番号 8000 でプレビュー用の画面が表示される
    * <img width="1920" alt="スクリーンショット 2022-09-19 16 54 31" src="https://user-images.githubusercontent.com/59598693/190973996-c777372c-e5ce-43a4-af89-c1c073330ab0.png">

6. 以上

## 使い方

* 記事の作成

  ```bash
  make article
  ```

* 本の作成

  ```bash
  make book
  ```

* Lint の実行

  ```bash
  make lint
  ```

## make コマンド一覧

```bash
$ make help

help                 Show options
build                Build docker container
up                   Do docker compose up in detached mode
down                 Do docker compose down
restart              Do docker compose restart
exec                 Execute a command in a running app container
logs                 Tail docker compose logs
ps                   Check container status
lint                 Run lint
article              Create a new article
book                 Create a new book
```
