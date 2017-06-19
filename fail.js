var p = require('node-pledge');
var http = require('http');

p.init('stdio rpath wpath tty');

console.log('this will output');
http.get('http://google.com', function(a,b) {
	console.log(a, b);
});
