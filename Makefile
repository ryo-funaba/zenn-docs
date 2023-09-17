.PHONY: help ## make task の説明を表示する
help:
	@grep -E "^.PHONY:( *)" $(MAKEFILE_LIST) | sed -e 's/\.PHONY: *//g' | sed -e 's/ *## */\t/g' | awk 'BEGIN {FS = "\t"}; {printf "\033[36m%-40s\033[0m %s\n", $$1, $$2}'

#
# Lint Tasks
#
.PHONY: lint ## 全ファイルを対象に Lint を実行する
lint:
	@printf "\033[1;33mLint\33[0m\n"; \
	bun lint
	@printf "\033[1;32mSuccess\33[0m\n"

#
# Zenn Tasks
#
.PHONY: preview ## コンテンツをブラウザでプレビュー
preview:
	@printf "\033[1;33mPreview\33[0m\n"; \
	bunx zenn preview

.PHONY: create-article ## 新しい記事を追加
create-article:
	@printf "\033[1;33mCreate Article\33[0m\n"; \
	bunx zenn new:article
	@printf "\033[1;32mSuccess\33[0m\n"

.PHONY: create-book ## 新しい本を追加
create-book:
	@printf "\033[1;33mCreate Book\33[0m\n"; \
	bunx zenn new:book
	@printf "\033[1;32mSuccess\33[0m\n"
