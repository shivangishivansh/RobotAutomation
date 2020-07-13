#Tags

*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resource3.robot


*** Variables ***


*** Test Cases ***
TC_001 Text Boxes
    [Tags]    SIT
    [Setup]    Start Browser
    [Teardown]    Close Window
    Input Text  name:fld_username  Champkallal
    Input Text  name:fld_email    Champak@gmail.com
    Input Text  name:fld_password  champak123


TC_002 Radio Button
    [Tags]    UAT
    [Setup]    Start Browser
    [Teardown]    Close Window
    Select Radio Button    add_type    home