const http = require("http");
const fs = require("fs");

// run node tools/gen-wget-list.js

var options = {
	host: 'linuxfromscratch.org',
	port: 80,
	path: '/lfs/view/development/wget-list'
};

var request = http.request(options, function (res) {
	var result = '';

	res.on('data', function (chunk) {
		result += chunk;
	});

	res.on('end', function () {
		generateWget(result);
	});
});
request.end();

generateWget = (data) => fs.writeFile('src/wget-list', data, () => {} )

