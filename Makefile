.PHONY = update
update:
	curl https://api.github.com/repos/simple-icons/simple-icons/commits | jq '.[0].sha' --raw-output | xargs -I{} hugo mod get "github.com/simple-icons/simple-icons@{}" && hugo mod tidy

