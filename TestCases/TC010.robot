#In this example we would understand when we need to perform something just before the test suite and after the *** test cases ***
#suite.
#We use Test Setup and Test Teardown when we need to perform something before and after each test case.*** Test Cases ***
#If we need to peform something before each test suit, we use suit setup and teardown
*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resource4.robot
Suite Setup    Start Browser
Suite Teardown    Close Window


*** Variables ***


*** Test Cases ***
TC_001 Text Boxes
    Input Text  name:fld_username  Champkallal
    Input Text  name:fld_email    Champak@gmail.com
    Input Text  name:fld_password  champak123


TC_002 Radio Button
    Select Radio Button    add_type    home