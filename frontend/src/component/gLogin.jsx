import React from "react";
import { GoogleOAuthProvider, GoogleLogin } from "@react-oauth/google";
import axios from 'axios';
import './glogin.css';

export default function Login() {


  return (
    <div className="container">
      <div className="googleAuthDiv">
        <GoogleOAuthProvider className="google" clientId="1036325756489-o1iinvilskj04u8ufnrop9guokvqe5f0.apps.googleusercontent.com">
          <GoogleLogin
            onSuccess={(credentialResponse) => {
              // console.log(credentialResponse);
              // console.log(credentialResponse.credential)
              const headers = {
                'x-access-token': credentialResponse.credential,
              };
              axios.get('http://localhost:8080/api/authBearer', { headers })
                .then(response => {
                  console.log(response);
                  localStorage.setItem('isEmployee', response.data.isEmployee);
                  localStorage.setItem('bearerToken', response.data.token);
                  localStorage.setItem('loginType', response.data.loginType)
                  // window.location.href = `https://metaverse.sakhaglobal.com:447/register.html?hoveringMouse=true&sessionId=${response.data.token}&isEmployee=${response.data.isEmployee}&loginType=${response.data.loginType}`
                })
                .catch(error => {
                  alert(error);
                  // Handle errors
                });
            }}
            onError={() => {
              console.log("Login Failed");
            }}
          />
        </GoogleOAuthProvider>
      </div>
    </div>
  );
}
