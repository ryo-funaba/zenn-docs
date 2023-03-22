# ![zenn](./icon/zenn.png) zenn-docs

[![CI](https://github.com/ryo-funaba/zenn-docs/actions/workflows/main.yml/badge.svg)](https://github.com/ryo-funaba/zenn-docs/actions/workflows/main.yml)

Zenn の記事や本を管理するリポジトリです。

記事や本の管理に zenn-cli を使用しています。

## ⚙️ 技術スタック

- zenn-cli
- Docker Compose
- textlint
- markdownlint

## 🔨 環境構築

- 前提条件
  - Docker(v20.10.17 以上) がインストールされていること
  - Docker compose(v2.7.0 以上) がインストールされていること
  - Docker デスクトップアプリが起動していること

1. リポジトリをクローン

   ```bash
   git clone github:ryo-funaba/zenn-docs.git
   ```

2. トップディレクトリに移動

   ```bash
   cd zenn-docs
   ```

3. プレビュー用のコンテナを起動

   ```bash
   make setup
   ```

4. ブラウザでプレビューを確認する

    - 接続先：`http://localhost:8000`
    - <img width="1920" alt="Zennのプレビュー画面" src="https://user-images.githubusercontent.com/59598693/190973996-c777372c-e5ce-43a4-af89-c1c073330ab0.png">

5. 以上

## 📝 使い方

- 記事の作成

  ```bash
  make article
  ```

- 本の作成

  ```bash
  make book
  ```

- Lint の実行

  ```bash
  make lint
  ```

## 💁‍♂️ make コマンド一覧

```bash
$ make help

help                 Show options
setup                Create a container for preview
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
