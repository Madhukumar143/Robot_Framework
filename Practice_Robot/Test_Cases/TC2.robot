*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com

*** Test Cases ***
variables practice
    open browser    ${url}  ${browser}  #open browser
    maximize browser window  #to maximize window
    title should be   nopCommerce demo store
    click link  xpath://a[normalize-space()='Log in']  # to click on a link
    ${"email_txt"}  set variable  id:Email    #creating a variable


    element should be visible   ${"email_txt"}  #checking whether the element is visible or not
    element should be enabled   ${"email_txt"}  #checking whether the element is enabled or not

    input text  ${"email_txt"}  madhukumarhm605@gmail.com   # giving text input to the field
    sleep   3
    clear element text  ${"email_txt"}  #clear the data present in a field
    sleep   5

*** Keywords ***

