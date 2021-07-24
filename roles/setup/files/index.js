var http = require("http");
var server = http.createServer(function (req, res) {
res.writeHead(200);
res.end("Hello world, Fred! Now the process is updated after kill it.");
});
server.listen(3000);