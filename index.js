var http = require("http");
var port = process.env.PORT

if (! port) {
  throw new Error('port is required');
}

var port2 = +port + 1;
var server = http.createServer(function(request, response) {
  response.end(port.toString());
});

server.listen(port);
console.log("Server is listening:", port);

var server2 = http.createServer(function(request, response) {
  response.end(port2.toString());
});

server2.listen(port2);
console.log("Server2 is listening:", port2);
