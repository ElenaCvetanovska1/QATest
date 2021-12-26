*** Settings ***
Library  SeleniumLibrary


*** Keywords ***

Start TestCase
    Open Browser  https://etherscan.io/register  chrome
    Maximize Browser Window
    Click Element  id:btnCookie
    Scroll Element Into View  id:ContentPlaceHolder1_btnRegister

Finish TestCase
    Close Browser

