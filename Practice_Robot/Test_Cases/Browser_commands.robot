*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://testautomationpractice.blogspot.com/
${Browser}        Chrome

*** Test Cases ***
Browser_Comands
    Open Browser    ${URL}    ${Browser}
    maximize browser window
    sleep    3

    go to    https://www.google.com/
    #Maximize browser window
    maximize browser window
    sleep   3

    go back
    sleep    3
    close browser

*** Keywords ***
