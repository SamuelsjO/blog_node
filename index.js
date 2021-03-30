const bodyParser = require("body-parser");
const express = require("express");
const app = express();
const connection = require("./data_base/data_base")
const categoriesController = require("./category/categoryController")
const articlesController = require("./articles/articlesControllers")

const Article = require("./articles/Article")
const Category = require("./category/Category")


app.set('view engine','ejs')
app.use(express.static('public'))

app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())

connection
    .authenticate()
    .then(() => {
        console.log("Conexão feita com sucesso!");
    }).catch((error) => {
        console.log(error)
    })

app.get("/", (req, res) => {
    res.render("index")
})


app.use("/", categoriesController)
app.use("/", articlesController)

app.listen(8080, () => {
    console.log("O servidor está rodando")
})