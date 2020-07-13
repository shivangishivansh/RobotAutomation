
*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/first.py


*** Variables ***
${URL}    http://www.thetestingworld.com/testings
${Browser}    Chrome

*** Keywords ***
Start Browser
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window


Close Window
    ${title}=    Get Title
    Log    ${title}
    Close Browser

#define the python program as keyword which can be used in the test case
Create Folder
    folder
    subfolder
