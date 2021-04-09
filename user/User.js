const Sequelize = require("sequelize")
const connection = require("../data_base/data_base")

const User = connection.define('users',{
    email:{
        type: Sequelize.STRING,
        allowNull: false
    },password: {
        type: Sequelize.STRING,
        allowNull: false
    }
})

User.sync({force: false})

module.exports = User