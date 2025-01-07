*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources_1/Resources.robot
Library    DataDriver    ../Resources_1/Practice.xlsx
Suite Setup    Opening my browser
Suite Teardown    closing my browsers
Test Template    Invalid_Login

*** Test Cases ***
Login_Test_Using_Excel using

*** Keywords ***
Invalid_Login
    [Arguments]    ${username}    ${password}
    inputing username    ${username}
    inputing password    ${password}
    Click on to Login button
    Error message should be visible
