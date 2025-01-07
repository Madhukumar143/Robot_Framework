*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Table_validation
    open browser    https://testautomationpractice.blogspot.com    chrome
    maximize browser window
    ${rows}    get element count    xpath://table[@name='BookTable']/tbody/tr
    ${cols}    get element count    xpath://table[@name='BookTable']/tbody/tr/th
    log to console    ${rows}
    log to console    ${cols}

    ${data}    get text    xpath://table[@name='BookTable']/tbody/tr[2]/td[1]
    log to console    ${data}

    table column should contain    xpath://table[@name='BookTable']    1    BookName
    table row should contain     xpath://table[@name='BookTable']    5    Mukesh

    table cell should contain    xpath://table[@name='BookTable']    6    4    2000
    table header should contain    xpath://table[@name='BookTable']    BookName


*** Keywords ***
