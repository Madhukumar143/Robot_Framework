*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Scrolltest
    Open browser    https://en.wikipedia.org/wiki/Main_Page    Chrome
    maximize browser window
    # execute javascript    window.scrollTo(0,1500)
    #scroll page till the respective element
    #scroll element into view    xpath://img[@alt='Haane Manahi']
    #scrool down till the bottom
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    sleep    2
    #from bottom to start
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)
    sleep    3
    close browser

*** Keywords ***
