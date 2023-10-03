module.exports.authSuccessResponse = async function (req, res) {
    res.status(200).json({
        success: 'true',
        token: req.body.token || req.query.token || req.headers["x-access-token"],
        loginType: 'google',
        isEmployee: 2,
    })
}