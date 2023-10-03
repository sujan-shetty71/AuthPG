const { authSuccessResponse } = require("../controller/authResponse");

const verifyToken = require('../middleware/authBearer');

const router = require("express").Router();

router.get("/authBearer", verifyToken, authSuccessResponse);

router.get("/api/callbackstatus", );

module.exports = router;