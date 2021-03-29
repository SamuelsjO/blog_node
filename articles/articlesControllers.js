const express = require("express")
const router = express.Router()

router.get("/articles", (req, res) => {
    res.send("ROTA DE ARTICLES")
});

router.get("/admin/articles/new", (req, res) => {
    res.send("TESTANDO CRIAR NOVO ARTICLES")
})

module.exports = router;