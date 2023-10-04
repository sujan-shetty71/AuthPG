const jwt_decode = require('jwt-decode');

const config = process.env;

const verifyToken = async (req, res, next) => {

    const token = req.headers['x-access-token'];

    if (!token) {

        return res.status(403).send("A token is required for authentication");

    }
    try {

        const decoded = jwt_decode(token);

        const emailId = decoded.email;

        const valid = emailId.endsWith('@sakhaglobal.com');

        if(valid){

            return next();

        }
        else{

            throw new Error('Invalid Token');
            
        }

    } catch (err) {

        console.log(err);

        return res.status(401).send("Invalid Token");

    }

};

module.exports = verifyToken;



// const jwt = require('jsonwebtoken');

// const jwt_decode = require('jwt-decode');

// const email = 'abc@sakhaglobaal.com';

// const secretKey = 'secretKEY';

// const encoded = jwt.sign({email}, secretKey, {expiresIn: "1h"});

// console.log(encoded);

// const token_ = "eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmNzI1NDEwMWY1NmU0MWNmMzVjOTkyNmRlODRhMmQ1NTJiNGM2ZjEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIxMDM2MzI1NzU2NDg5LW8xaWludmlsc2tqMDR1OHVmbnJvcDlndW9rdnFlNWYwLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTAzNjMyNTc1NjQ4OS1vMWlpbnZpbHNrajA0dTh1Zm5yb3A5Z3Vva3ZxZTVmMC5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjExMjg0MDA0ODI4NjQ0MDYwNDg2NyIsImhkIjoic2FraGFnbG9iYWwuY29tIiwiZW1haWwiOiJwcmFkZWVwa3VtYXIuZ29wYWlAc2FraGFnbG9iYWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsIm5iZiI6MTY5NTgwMzkzMCwibmFtZSI6IlByYWRlZXBrdW1hciBDIEdvcGFpIiwicGljdHVyZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hL0FDZzhvY0l2Si1fUTBLQVpCOURZT25jOEcxdVhrdURTeGRvdEFUN1J5OVFBOVB5RD1zOTYtYyIsImdpdmVuX25hbWUiOiJQcmFkZWVwa3VtYXIgQyIsImZhbWlseV9uYW1lIjoiR29wYWkiLCJsb2NhbGUiOiJlbi1HQiIsImlhdCI6MTY5NTgwNDIzMCwiZXhwIjoxNjk1ODA3ODMwLCJqdGkiOiIzY2NiMzBjZjg5M2JmYjc5YjYwYzVmZjhiODlmMmUwNmE1MzFkYWYxIn0.LlW1_qw4gwS8oO4va6dVMs49sC2Qw1ESapa2qk3OeYk76XdNDekMaQAcumdzM5bDOsgaoP8ytO8s07kscYs2-_CHoZB4NcxsWi5z1WKRSyJ5-IQigfz71JLdbKiVWRmNwzCXWOwm1x-juBuATrNap6eHIN7zEydT7lrUJDkiCIVvcXXWei6DTlwgUWILPNWDXyczU62HDlnKYf0sg47MJITwagzVX_ARQHPhSzChtdDklAWJkjI0keSy1u38A4y0IUMmc8WSYLNINvqPM7r0vVBuN9ciHE3dW-wTSLe4COizPN4xLmOQBRPIsPCHNvVbNEKDgStBIV7eSLYe7iD9Qw";

// const decoded = jwt_decode(token_)

// console.log(decoded);

// const email1 = decoded.email;

// console.log(email1.endsWith('@sakhaglobal.com'))
