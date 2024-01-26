// IMPORTS FROM PACKAGES
const express = require('express');
const mongoose = require('mongoose');
// IMPORT FROM OTHER FILES
const authRouter = require("./routes/auth");
const adminRouter = require('./routes/admin');

// Init
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://expozer:expozer123@cluster0.2pzj4fp.mongodb.net/?retryWrites=true&w=majority"

// middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);

// Connections
mongoose
    .connect(DB)
    .then(() => {
        console.log("Connection Successful");
})
.catch((e) => {
    console.log(e);
});

app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port ${PORT}`);
});