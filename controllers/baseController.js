const utilities = require("../utilities/")
const baseController = {}

baseController.buildHome = async function (req, res, next) {
  try {
    const nav = await utilities.getNav()
    res.render("index", { title: "Home", nav })
  } catch (err) {
    next(err)
  }
}

baseController.triggerError = function (req, res, next) {
  try {
    throw new Error("This is an intentional 500 error for testing.")
  } catch (err) {
    next(err)
  }
}

module.exports = baseController