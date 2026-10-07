HUGO ?= $(if $(wildcard .local/bin/hugo),.local/bin/hugo,hugo)
PORT ?= 1313

.PHONY: check-hugo build serve clean

check-hugo:
	@expected="v$$(cat .hugo-version)"; actual="$$( $(HUGO) version | cut -d ' ' -f 2 | cut -d '+' -f 1 | cut -d '-' -f 1)"; \
	if [ "$$actual" != "$$expected" ]; then \
		printf 'Use Hugo %s; found %s.\n' "$$expected" "$$actual" >&2; exit 1; \
	fi

build: check-hugo
	$(HUGO) --source website --gc --minify --panicOnWarning --cleanDestinationDir

serve: check-hugo
	$(HUGO) server --source website --bind 127.0.0.1 --port $(PORT) --baseURL http://localhost:$(PORT)/ --disableFastRender --noHTTPCache

clean:
	rm -rf website/public website/resources website/.hugo_build.lock
