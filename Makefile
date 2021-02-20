SHELL=/bin/bash

.PHONY: setup
setup:
	@read -p "Enter the project name: " projname; \
	mv MyApp $$projname; \
	sed -i '' "s/MyApp/$${projname}/g" project.yml

.PHONY: bootstrap
bootstrap:
	@mint bootstrap

.PHONY: proj
proj:
	@mint run xcodegen

.PHONY: format
format:
	@mint run swiftformat .

.PHONY: format-staged
format-staged:
	@Scripts/git-format-staged --formatter "mint run swiftformat stdin --stdinpath '{}'" "*.swift"

.PHONY: githooks
githooks:
	echo "Scripts/git-format-staged --formatter \"mint run swiftformat stdin --stdinpath '{}'\" \"*.swift\"" > .git/hooks/pre-commit
	chmod u+x .git/hooks/pre-commit