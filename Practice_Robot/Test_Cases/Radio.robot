*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://testautomationpractice.blogspot.com/
${Browser}        Chrome

*** Test Cases ***
Select Male Radio Button
    Open Browser    ${URL}    ${Browser}
    maximize browser window
    #Select Radio button
    select radio button    gender   male

    #Select check box
    select checkbox    sunday
    select checkbox    friday

    unselect checkbox   sunday
    sleep   3
*** Keywords ***

