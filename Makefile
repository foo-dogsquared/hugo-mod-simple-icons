.PHONY = update
update:
	curl https://api.github.com/repos/simple-icons/simple-icons/releases/latest | jq '.target_commitish' --raw-output | xargs --replace="{}" hugo mod get "github.com/simple-icons/simple-icons@{}" && hugo mod tidy

