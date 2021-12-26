*** Settings ***
Library  SeleniumLibrary


*** Keywords ***

Page Should Contain error messages on mandatory fields
    Page Should Contain  Username is invalid.
    Page Should Contain  Please enter a valid email address.
    Page Should Contain  Your password must be at least 5 characters long.
    Page Should Contain  Please accept our Terms and Conditions.

Click on *Create an account*
    Click Element  id:ContentPlaceHolder1_btnRegister

Valid values in the required fields
    Input text  id:ContentPlaceHolder1_txtUserName  sasko196
    Input text  //*[@id="ContentPlaceHolder1_txtEmail"]  saskomladost1@yopmail.com
    Input text  id:ContentPlaceHolder1_txtPassword  tracelabs!@#
    Input text  id:ContentPlaceHolder1_txtPassword2  tracelabs!@#
    Click Element  //*[@id="ContentPlaceHolder1_maindiv"]/div[4]/div/label/span
# adding a delay and manually solve Captcha
    Sleep  15s

Valid values in the required fields and check op. fields
    Input text  id:ContentPlaceHolder1_txtUserName  miskokovic13
    Input text  //*[@id="ContentPlaceHolder1_txtEmail"]  misko.kovic15@yopmail.com
    Input text  id:ContentPlaceHolder1_txtPassword  tracelabs!@#
    Input text  id:ContentPlaceHolder1_txtPassword2  tracelabs!@#
    Click Element  //*[@id="ContentPlaceHolder1_maindiv"]/div[4]/div/label/span
    Click Element  //*[@id="ContentPlaceHolder1_maindiv"]/div[5]/div/label/span
# adding a delay and manually solve Captcha
    Sleep  15s

Registration message
    Page Should Contain  Your account registration has been submitted and is pending email verification


Enter Invalid Emails
    Input text  //*[@id="ContentPlaceHolder1_txtEmail"]  testatgmail.com
    Page Should Contain  Please enter a valid email address.
    Input text  //*[@id="ContentPlaceHolder1_txtEmail"]  testatgmailcom
    Page Should Contain  Please enter a valid email address.
    Input text  //*[@id="ContentPlaceHolder1_txtEmail"]  @gmail.com
    Page Should Contain  Please enter a valid email address.

Enter a username with less than 5 characters
    Input text  id:ContentPlaceHolder1_txtUserName  labs
    Page Should Contain  Username is invalid.

Enter a password
    Input text  id:ContentPlaceHolder1_txtPassword  tracelabs!@#
    Input text  id:ContentPlaceHolder1_txtPassword2  tracelabs!
    Page Should Contain  Password does not match, please check again.



