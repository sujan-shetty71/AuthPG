import React, { useState } from 'react';
import QRCode from 'qrcode';
import './button.css'
import jwt_decode from "jwt-decode";
import Login from './gLogin';
import img from '../images/bt1.png'

const MainContent = () => {
  const [isButtonDisabled, setIsButtonDisabled] = useState(false);
  const [qrCodeData, setQRCodeData] = useState(null);
  const [isSignInClicked, setIsSignInClicked] = useState(false);
  const [isQRCodeVisible, setIsQRCodeVisible] = useState(false);
  const [isLoading, setIsLoading] = useState(false);

  const base_url = 'http://localhost:8080/';

  const handleButtonClick = async () => {
    if (!isSignInClicked) {
      setIsSignInClicked(true);
      setIsButtonDisabled(true);

      try {
        const response = await fetch(base_url + 'api/sign-in');
        // const id = response.headers.get('x-id');
        const data = await response.json();

        console.log(data);

        const tempId = data.id;

        makeQr(data);
        checkCallbackStatus(tempId);
      } catch (err) {
        console.log(err);
      }
    }
  };

  const checkCallbackStatus = (tempId) => {
    fetch(base_url + 'api/callbackstatus', {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
        'x-id': tempId,
      },
    })
      .then((response) => response.json())
      .then((data) => {
        console.log('dataaaaaaa', data);
        if (data.token) {
           let decodedHeader = jwt_decode(data.token);
           console.log('decodeee', decodedHeader.userInfo.did);
           localStorage.setItem('did', decodedHeader.userInfo.did);
           localStorage.setItem('loginType', decodedHeader.userInfo.loginType);
           localStorage.setItem('bearerToken', data.token);
           localStorage.setItem('sessionID', decodedHeader.userInfo.session);
           localStorage.setItem('isEmployee', decodedHeader.userInfo.isEmployeee);
           setIsLoading(false);

          //  window.location.href = `https://metaverse.sakhaglobal.com:447/register.html?hoveringMouse=true&sessionId=${decodedHeader.userInfo.session}&isEmployee=${decodedHeader.userInfo.isEmployeee}&loginType=${decodedHeader.userInfo.loginType}`
          }
          else if(data.status === 'Authenticating')
          {
             console.log('loadinggggggggggggggg');
             setIsLoading(true);
             setTimeout(() => checkCallbackStatus(tempId), 1000);
          }
           else {
            console.log('pendingggggggggg');
            setTimeout(() => checkCallbackStatus(tempId), 2000);
        }
      })
      .catch((err) => console.log(err))
      .finally(() => {
        setIsQRCodeVisible(true);
        setIsButtonDisabled(false); 
      });

  };

  const makeQr = (data) => {
    QRCode.toDataURL(JSON.stringify(data), {
      width: 250,
      height: 250,
      color: {
        dark: '#000',
        light: '#e9e9e9',
      },
    }).then((url) => {
      setQRCodeData(url);
    });
  };

  return (
        <main className="wrap">
          {!isQRCodeVisible && (
            <div className="wrap-button">
              <h2 className='header'>Login</h2>
              <button className='button' onClick={handleButtonClick} disabled={isButtonDisabled}>
              <img src={img} alt='a' className='btn1'/>
              </button>
              <hr />
                <Login />
            </div>
            
          )}
        <div className="qr-code-container">
          {isQRCodeVisible && qrCodeData && (
            <img src={qrCodeData} alt="QR Code" className="qr-code" />
          )}
          {isLoading && (
            <div className="loader-overlay" />
          )}
        </div>
        </main>
  );
};

export default MainContent;
