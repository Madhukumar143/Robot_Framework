*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demoqa.com/automation-practice-form
${browser}    chrome

*** Test Cases ***
practiceform
    launchingbrowser
    inputvalues
    sleep    3



*** Keywords ***
launchingbrowser
    Open browser    ${url}   ${browser}
    maximize browser window
inputvalues
    input text    xpath://input[@id='firstName']    Madhu Virat
    input text    xpath://input[@id='lastName']    RCB