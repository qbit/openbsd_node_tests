# OpenBSD Node Tests
Series of tests I run to ensure a node.js build is working properly

## Using ##

The sqlite3 packages assumes that there is a `python` binary, so
symlinking `${PREFIX}/bin/python2.7 to ${PREFIX}/bin/python` is required.

Once that is in place, simply run:
`make`
