all: install test

test: test_pledge test_fail_pledge test_native

install:
	@npm install && echo "\033[01;32m✓\033[0m npm install" || echo "\033[01;31m✗\033[0m npm install"

clean:
	rm -rf node_modules
	rm -f *.core

test_pledge:
	@echo '{"a":1,"b":3}' | ./pp.js > /dev/null && echo "\033[01;32m✓\033[0m pp.js" || echo "\033[01;31m✗\033[0m pp.js"

test_fail_pledge:
	@node fail.js > /dev/null || echo "\033[01;32m✓\033[0m fail.js"

test_native:
	@node native.js 2>&1 > /dev/null && echo "\033[01;32m✓\033[0m native.js" || echo "\033[01;31m✗\033[0m native.js"
