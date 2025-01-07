*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}    https://demoqa.com/automation-practice-form
${url2}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
practiceform
    ${pagetitle}    launchingbrowser    ${url1}    ${browser}
    #print title in console
    log to console    ${pagetitle}
    #show in log file
    log    ${pagetitle}
    inputvalues
    sleep    3



*** Keywords ***
launchingbrowser
    [Arguments]    ${weburl}    ${webbrowser}
    Open browser    ${weburl}    ${webbrowser}
    maximize browser window
    ${title}    get title
    [Return]    ${title}
inputvalues
    input text    xpath://input[@id='firstName']    Madhu Virat
    input text    xpath://input[@id='lastName']    RCB