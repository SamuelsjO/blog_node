const Sequelize = require("sequelize")
const connection = require("../data_base/data_base")
const Category = require("../category/Category")

const Article = connection.define('articles',{
    title: {
        type: Sequelize.STRING,
        allowNull: false
    },
    slug: {
        type: Sequelize.STRING,
        allowNull: false
    }, 
    body: {
        type: Sequelize.TEXT,
        allowNull: false
    }
})

Category.hasMany(Article)//uma cateroria tem muitos artigos 1 - p - M
Article.belongsTo(Category)//Um artigo pertence a uma categoria 1 - p - 1


module.exports = Article