const express = require("express");
const app = express();
const port = 3000;
app.get("/", (req, res) => {
	res.send("TESTE AWS deployando novamente!");
});

app.listen(port, () => {
	console.log(`Examplssssssssse app listening on port ${port}`);
});
