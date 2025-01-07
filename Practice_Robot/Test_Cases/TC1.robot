*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Login Test
    open browser    https://development.d2y3zbcam191b1.amplifyapp.com/auth/login   chrome
    #click link  xpath://input[@id='mat-input-0']
    input text  xpath://input[@id='mat-input-0']    sudheer.v@terralogic.com
    input text  id:new_password    Test@12345
    click element  xpath://button[normalize-space()='Sign In']
    close browser


*** Keywords ***