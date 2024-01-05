const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');

const app = express();

//app.use(bodyParser.json());//midleware
//connect to mongoDB

mongoose
.connect("mongodb://localhost:27017/bookdb",{
    useNewUrlParser: true,
     useUnifiedTopology: true
    })
.then(() =>console.log("connected to MongoDB..."))
.catch((err) => console.error("could not connect to MongoDB...", err))
//start a server
const port = 3000;
app.listen(port, () => console.log ("listening on port 3000..."));