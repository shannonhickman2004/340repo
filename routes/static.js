const express = require("express")
const router = express.Router()
const baseController = require("../controllers/baseController")

// Static folder
router.use(express.static("public"))
router.use("/css", express.static(__dirname + "/public/css"))
router.use("/js", express.static(__dirname + "/public/js"))
router.use("/images", express.static(__dirname + "/public/images"))

// Homepage route
router.get("/", baseController.buildHome)

// Task 3: Intentional error test
router.get("/error-test", baseController.triggerError)

module.exports = router


