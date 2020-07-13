#Use of keywords with arguments

*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resource3.robot
Test Setup    Start Browser
Test Teardown    Close Window
*** Variables ***

*** Test Cases ***
TC_001 Text Boxes
    Input Text  name:fld_username  Champkallal
    Input Text  name:fld_email    Champak@gmail.com
    Input Text  name:fld_password  champak123


TC_002 Radio Button
    Select Radio Button    add_type    home