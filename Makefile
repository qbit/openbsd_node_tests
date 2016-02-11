all: clean install test

test: test_pledge test_fail_pledge test_native_module test_module

install:
	@npm install && echo "\033[01;32m✓\033[0m npm install" || echo "\033[01;31m✗\033[0m npm install"

clean:
	rm -rf node_modules
	rm -f *.core

test_pledge:
	@echo '{"a":1,"b":3}' | ./pp.js > /dev/null && echo "\033[01;32m✓\033[0m pp.js" || echo "\033[01;31m✗\033[0m pp.js"

test_fail_pledge:
	@echo -n "making un-pledged calls... "
	@node fail.js > /dev/null || echo "\033[01;32m✓\033[0m fail.js"

test_native_module:
	@node native_module.js 2>&1 > /dev/null && echo "\033[01;32m✓\033[0m native_module.js" || echo "\033[01;31m✗\033[0m native_module.js"

test_module:
	@node module.js 2>&1 > /dev/null && echo "\033[01;32m✓\033[0m module.js" || echo "\033[01;31m✗\033[0m module.js"
