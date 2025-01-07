*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://testautomationpractice.blogspot.com/
${Browser}        Chrome

*** Test Cases ***
Select Male Radio Button
    #${speed}    get selenium speed
    #log to console    ${speed}
    Open Browser    ${URL}    ${Browser}
    #Maximize browser window
    maximize browser window
    #Set implicit wait
    set selenium implicit wait    2 seconds
    #Select Radio button
    #set selenium speed    1 second
    select radio button    gender   male
    select checkbox    sunday
    select checkbox    friday

    unselect checkbox   sunday

    #${speed}    get selenium speed
    #log to console    ${speed}

*** Keywords ***
