const express = require('express');
const grbRoutes = require('./src/grb/routes');
const app = express();
const port = 3000;

app.use(express.json());

app.get("/", (req, res) => {
    res.send("Currently using localhost3000");
});

app.use('/api/grb', grbRoutes);

app.listen(port, () =>
    console.log(`App listening at http://localhost:${port}`)
);

