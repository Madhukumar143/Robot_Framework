*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://testautomationpractice.blogspot.com/
${Browser}        Chrome

*** Test Cases ***
Window_handling
    Open Browser    ${URL}    ${Browser}
    maximize browser window
    sleep   2
    click element    xpath://button[@onclick="myFunction()"]
    sleep    2
    switch window    Automation Testing Practice
    sleep    2
    close all browsers

Alert_window
    Open Browser    ${URL}    ${Browser}
    maximize browser window
    click button    xpath://button[normalize-space()='Confirm Box']
    sleep    2
    #handle alert    accept
    handle alert    dismiss
    #alert should be present    Press a button!
    sleep    3

    click button    xpath://button[normalize-space()='Alert']
    alert should be present    I am an alert box!
    sleep    3

    click button    xpath://button[normalize-space()='Copy Text']
    alert should not be present    Preess a button!
    sleep    2


    close browser



*** Keywords ***
