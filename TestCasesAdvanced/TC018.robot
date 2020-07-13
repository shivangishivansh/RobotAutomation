#In this test suite, we will be using python programs as keywords. Python functions with arguments
*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resource7.robot


*** Variables ***

*** Test Cases ***
TC_001 Browser start and Close
    Start Browser
    ${mergeinfo}=    Concat userinfo    firstuser  firstpassword
    Log    ${mergeinfo}
    Close Window



