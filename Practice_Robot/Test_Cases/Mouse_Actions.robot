*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Mouse_Actions
    Open browser    https://testautomationpractice.blogspot.com/    Chrome
    maximize browser window
    # Right Click
    #open context menu    xpath://button[normalize-space()='Alert']
    #double click
    #sleep    3
    #double click element    xpath://button[normalize-space()='Copy Text']
    #drag and drop
    drag and drop    xpath://p[normalize-space()='Drag me to my target']    xpath://div[@id='droppable']
    sleep    3
    close browser


*** Keywords ***
