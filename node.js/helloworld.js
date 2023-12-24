const http = require("http");

const port = 3000;

const server = http.createServer(function(req, res) {
    if (req.url ==="/") {
        return respondText(req, res);
    }

    if (req.url==="/json") {
        return respondJSON(req, res);
    }

    respondNotFound(req, res);
});
function respondText(req, res) {
    res.setHeader("contentType", "text/plain");
    res.end("Hi this is anuradha");
}

function respondJSON(req, res) {
    res.setHeader("contentType", "application/json");
    res.end(JSON.stringify({ text: "hello im anuradha", numbers: [2,2,2] }));
}

function respondNotFound(req, res) {
    res.setHeader("contentType", "text/plain");
    res.end("Not Found");
}
server.listen(port);
//cd folder to go to folder and tab to go folder
console.log(`server listening on port ${port}`);