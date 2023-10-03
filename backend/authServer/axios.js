const axios = require('axios');

// Define the base URL and authentication details from the JSON structure
const baseUrl = "https://self-hosted-platform.polygonid.me"; // Replace with your actual base URL
const authUser = "user-issuer"; // Replace with your username
const authPassword = "password-issuer"; // Replace with your password

async function axiosCall(){
// Make the Axios POST request to create Issuer DID------------------------------------------------------------
// const requestBody = {
//     didMetadata: {
//       method: "polygonid",
//       blockchain: "polygon",
//       network: "mumbai"
//     }
//   };
  
//   // Define the headers including Basic Authentication
//   const headers = {
//     'Content-Type': 'application/json',
//     'Authorization': `Basic ${Buffer.from(`${authUser}:${authPassword}`).toString('base64')}`
//   };
// await axios.post(`${baseUrl}/v1/identities`, requestBody, { headers })
//   .then(response => {
//     // Handle the response here
//     console.log('Create Identity Response:', response.data);
//     // You can set the 'did' environment variable as well if needed
//     const did = response.data.identifier;
//     console.log('DID:', did);
//   })
//   .catch(error => {
//     // Handle any errors here
//     console.error('Error:', error);
//   });
// -------------------------------END Issuer DID------------------------------------------------------------//

const requestBody = {
    credentialSchema: "https://raw.githubusercontent.com/iden3/claim-schema-vocab/main/schemas/json/KYCAgeCredential-v3.json",
    type: "KYCAgeCredential",
    credentialSubject: {
      id: "{user's wallet did}",
      birthday: 19960424,
      documentType: 2
    },
    expiration: 1680532130
  };
  
  // Define the headers including Basic Authentication
  const headers = {
    'Content-Type': 'application/json',
    'Authorization': `Basic ${Buffer.from(`${authUser}:${authPassword}`).toString('base64')}`
  };

await axios.post(`${baseUrl}/v1/did:polygonid:polygon:mumbai:2qGTGvd54ez1wM4EqSVTjPSj71aXB9ukSKxygX29P9/claims`, requestBody, { headers })
.then(response => {
    // Handle the response here
    console.log('Create Claim Response:', response.data);
    // You can set the 'cid' environment variable as well if needed
    const cid = response.data.id;
    console.log('Claim ID:', cid);
  })
  .catch(error => {
    // Handle any errors here
    console.error('Error:', error);
  });

}

axiosCall();