*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Table_validation
    open browser    https://testautomationpractice.blogspot.com    chrome
    maximize browser window
    ${rows}    get element count    xpath://table[@name='BookTable']/tbody/tr
    ${colss}    get element count    xpath://table[@name='BookTable']/tbody/tr/th
    log to console    ${rows}
    log to console    ${colss}
*** Keywords ***
