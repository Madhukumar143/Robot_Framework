*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://admin-demo.nopcommerce.com/
${browser}    chrome

*** Keywords ***
Opening my browser
    open browser    ${url}    ${browser}
    maximize browser window

closing my browsers
    close all browsers

Loging into page
    go to    ${url}

Inputing Username
    [Arguments]    ${username}
    input text    id:Email    ${username}
Inputing Password
    [Arguments]    ${password}
    input text    id:Password    ${password}

Click on to Login button
    click element    xpath://button[normalize-space()='Log in']

Click on to Logout button
    click link   Logout

Error message should be visible
    page should contain    Login was unsuccessful.

Dashboard page should be visible
    page should contain    Dashboard
