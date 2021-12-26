*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionallity.robot
Resource  ../../Resources/Keywords.robot


*** Test Cases ***
Check the required fields by not filling any data
    [Documentation]  This test case verifies the required fields

    Set Selenium Implicit Wait  5s
    Start TestCase
    Click on *Create an account*
    Page Should Contain error messages on mandatory fields
    Finish Testcase

Check user should Register by filling all the required fields
    [Documentation]  This test case verifies the required fields

    Set Selenium Implicit Wait  5s
    Start TestCase
    Valid values in the required fields
    Click on *Create an account*
    Registration message
    Finish Testcase



Check all the optional fields when filling data
    [Documentation]  This test case verifies the optional fields

    Set Selenium Implicit Wait  5s
    Start TestCase
    Valid values in the required fields and check op. fields
    Click on *Create an account*
    Registration message
    Finish Testcase

Testing for some invalid emails with cases like : without @,without dot, without alphabets before@ ,with @ symbol written in words
    [Documentation]  This test case verifies the email field

    Set Selenium Implicit Wait  5s
    Start TestCase
    Enter Invalid Emails
    Finish Testcase

Check the username for less value than minimum
    [Documentation]  This test case verifies the usrname field
    Set Selenium Implicit Wait  5s
    Start TestCase
    Enter a username with less than 5 characters
    Finish Testcase

Testing whether the password and confirm password are same or not
    [Documentation]  This test case verifies the password fields
    Set Selenium Implicit Wait  5s
    Start TestCase
    Enter a password
    Finish Testcase

Check the username field with username which already in use
    [Documentation]  This test case verifies the username field

    Set Selenium Implicit Wait  5s
    Start TestCase
    Valid values in the required fields
    Click on *Create an account*
    Page should contain  Sorry! The username you entered is already in use.
    Finish Testcase






