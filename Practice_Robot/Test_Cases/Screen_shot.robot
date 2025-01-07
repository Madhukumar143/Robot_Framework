*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://testautomationpractice.blogspot.com/
${Browser}        Chrome

*** Test Cases ***
Screenshot
    Open Browser    ${URL}    ${Browser}
    maximize browser window
    sleep    3

    capture element screenshot    xpath://div[@id='header-inner']    Header.png
    #capture page screenshot    website.png
    capture page screenshot     D:\\Automation\\screenshot1.png
    sleep    4
    close browser

*** Keywords ***
