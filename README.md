# ![zenn](./icon/zenn.png) zenn-docs

[![CI](https://github.com/ryo-funaba/zenn-docs/actions/workflows/main.yml/badge.svg)](https://github.com/ryo-funaba/zenn-docs/actions/workflows/main.yml)

Zenn の記事や本を管理するリポジトリです。

記事や本の管理に zenn-cli を使用しています。

## 🔨 環境構築

1. リポジトリをクローン

   ```bash
   git clone github:ryo-funaba/zenn-docs.git
   ```

2. トップディレクトリに移動

   ```bash
   cd zenn-docs
   ```

3. パッケージをインストール

   ```bash
   yarn install
   ```

4. コンテンツをブラウザでプレビュー

   ```bash
   npx zenn preview
   ```

    - 接続先：`http://localhost:8000`
    - <img width="1920" alt="Zennのプレビュー画面" src="https://user-images.githubusercontent.com/59598693/190973996-c777372c-e5ce-43a4-af89-c1c073330ab0.png">

## 📝 使い方

- 記事の作成

  ```bash
  make create-article
  ```

- 本の作成

  ```bash
  make create-book
  ```

- Lint の実行

  ```bash
  make lint
  ```

## 💁‍♂️ make コマンド一覧

```bash
$ make help

help                                     make task の説明を表示する
lint                                     全ファイルを対象に Lint を実行する
create-article                           新しい記事を追加
create-book                              新しい本を追加
```
