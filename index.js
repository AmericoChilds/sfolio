const express = require('express');
const app = express();

var path = __dirname + "/";

var router = express.Router();

app.use('/', router);
console.log("bruh");
app.use(express.static('public'));
//
router.get('/', function(req, res) {
    res.sendFile(path + 'index.html');
})

app.listen(80);
