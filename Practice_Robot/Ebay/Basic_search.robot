*** Settings ***
Documentation  Basic search Functionality
Library    SeleniumLibrary

*** Variables ***
${URL}            https://www.ebay.com
${Browser}        Chrome

*** Test Cases ***
Verify Basic Search Functionality for Ebay
    [Documentation]  this test case verifies the basic search
    [Tags]  Functional

    Open Browser    ${URL}    ${Browser}
    Input Text  //input[@id='gh-ac']    mobile
    Press keys  //input[@id='gh-btn']  [Return]
    page should contain  results for mobile
    Close Browser
*** Keywords ***





*** Keywords ***
