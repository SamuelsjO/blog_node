const Sequelize = require("sequelize")
const connection = require("../data_base/data_base")

const Category = connection.define('categories',{
    title:{
        type: Sequelize.STRING,
        allowNull: false
    },slug: {
        type: Sequelize.STRING,
        allowNull: false
    }
})

Category.sync({force: false})

module.exports = Category