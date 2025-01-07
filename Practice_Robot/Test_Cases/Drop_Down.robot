*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://testautomationpractice.blogspot.com/
${Browser}        Chrome

*** Test Cases ***
Drop down select
    open browser    ${URL}  ${Browser}
    # country is select tag unique id and canada is from drop down content
    select from list by label    country    Canada
    sleep   3
    select from list by index    country    0
    sleep   3

    #select from list by id
    #select from list by value


*** Keywords ***
