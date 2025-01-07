*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources.robot
Suite Setup     Opening my browser
Suite Teardown     closing my browsers
Test Template  Invalid Login


*** Test Cases ***
right user wrong pwd    admin@yourstore.com    xyz
wrong user right pwd    admin@store.com    admin
right user empty pwd    admin@yourstore.com    ${EMPTY}
empty user right pwd    ${EMPTY}    admin
wrong user wrong pwd    admin@your.com    xyz


*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Inputing Username    ${username}
    Inputing Password    ${password}
    Click on to login button
    Error message should be visible