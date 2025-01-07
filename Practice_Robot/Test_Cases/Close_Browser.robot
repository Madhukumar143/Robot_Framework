*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://testautomationpractice.blogspot.com/
${Browser}        Chrome

*** Test Cases ***
Test_Browse_Closing
    Open Browser    ${URL}    ${Browser}
    #Maximize browser window
    maximize browser window

    Open Browser     https://www.google.com    ${Browser}
    #Maximize browser window
    maximize browser window
    sleep   3
    close all browsers

*** Keywords ***
