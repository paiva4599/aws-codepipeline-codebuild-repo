const http = require("http");
const port = process.env.PORT || 80;

const requestHandler = (request, response) => {
    response.end("Welcome to AWS CodePipeline with NodeJS!");
};

const server = http.createServer(requestHandler);
server.listen(port, () =>{
    console.log(`Running on ${port}`);
});