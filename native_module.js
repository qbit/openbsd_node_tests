var sqlite = require('sqlite3');
var db = new sqlite.Database(':memory:');

db.run("CREATE TABLE test (id int)");

db.close();
