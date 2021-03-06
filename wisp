#!/usr/bin/env node

var p = require('../src/grammar');
        require('../src/boolean');
        require('../src/cell');
        require('../src/datum');
        require('../src/list');
        require('../src/misc');
        require('../src/number');
        require('../src/program');
        require('../src/string');
        require('../src/symbol');
        require('../src/vector');


if (process.argv[0 + 2].match(/run|r|-r|-e/)) {
  console.log(p.parse(process.argv[0 + 3]).eval({}));
}

if (process.argv[0 + 2].match(/compile|c|-c/)) {
  console.log(p.parse(process.argv[0 + 3]).compile({}));
}

if (process.argv[0 + 2].match(/file|f|-f/)) {
    fs = require('fs');
    fs.readFile(process.argv[0 + 3], 'utf8', function (err, _data) {
        data = _data;
        console.log(p.parse(data).compile({}));
    });
}
