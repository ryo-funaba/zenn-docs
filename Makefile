.PHONY: help ## make task の説明を表示する
help:
	@grep -E "^.PHONY:( *)" $(MAKEFILE_LIST) | sed -e 's/\.PHONY: *//g' | sed -e 's/ *## */\t/g' | awk 'BEGIN {FS = "\t"}; {printf "\033[36m%-40s\033[0m %s\n", $$1, $$2}'

#
# Lint Tasks
#
.PHONY: lint ## 全ファイルを対象に Lint を実行する
lint:
	@printf "\033[1;33m[Lint] Start\33[0m\n"; \
	npm run lint
	@printf "\033[1;32m[Lint] Success\33[0m\n"

#
# Zenn Tasks
#
.PHONY: preview ## コンテンツをブラウザでプレビュー
preview:
	@printf "\033[1;33m[Preview] Start\33[0m\n"; \
	npx zenn preview

.PHONY: create-article ## 新しい記事を追加
create-article:
	@printf "\033[1;33m[Create Article] Start\33[0m\n"; \
	npx zenn new:article
	@printf "\033[1;32m[Create Article] Success\33[0m\n"

.PHONY: create-book ## 新しい本を追加
create-book:
	@printf "\033[1;33m[Create Book] Start\33[0m\n"; \
	npx zenn new:book
	@printf "\033[1;32m[Create Book] Success\33[0m\n"
