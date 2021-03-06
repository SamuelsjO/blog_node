const bodyParser = require("body-parser");
const express = require("express");
const session = require("express-session")
const app = express();
const connection = require("./data_base/data_base")
const categoriesController = require("./category/categoryController")
const articlesController = require("./articles/articlesControllers")
const UserController = require("./user/UserController")

const Article = require("./articles/Article")
const Category = require("./category/Category")
const User = require("./user/User")



app.set('view engine','ejs')
app.use(express.static('public'))


//session
app.use(session({
    secret: "qualquercoisa", 
    cookie: {
        maxAge: 30000
    }
}))

app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())

connection
    .authenticate()
    .then(() => {
        console.log("Conexão feita com sucesso!");
    }).catch((error) => {
        console.log(error)
    })
    
app.use("/", categoriesController)
app.use("/", articlesController)
app.use("/", UserController)

app.get("/", (req, res) => {
    Article.findAll({
        order: [
            ['id', 'DESC']
        ],
        limit: 4
    }).then(articles => {
       Category.findAll().then((categories => {
        res.render("index", {articles: articles, categories: categories})
       }))
    })
})

app.get("/:slug", (req, res) => {
    const slug = req.params.slug;
    Article.findOne({
        where: {
            slug: slug
        }
    }).then(article => {
        if(article != undefined){
            Category.findAll().then((categories => {
                res.render("article", {article: article, categories: categories})
               }))
        }else{
            res.redirect("/")
        }
    }).catch(err => {
        res.redirect("/")
    })
})

app.get("/category/:slug", (req, res) => {
    const slug = req.params.slug
    Category.findOne({
        where: {
            slug: slug
        },
        include: [{model: Article}]
    }).then( category => {
        if(category != undefined) {

            Category.findAll().then(categories => {
                res.render("index", {articles: category.articles, categories: categories})
            })
        } else {
            res.redirect("/")
        }
    }).catch(error => {
        res.redirect("/")
    })
})


app.listen(8080, () => {
    console.log("O servidor está rodando")
})