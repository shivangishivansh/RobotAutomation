*** Settings ***
Library    SeleniumLibrary
Documentation    Here we can provide additional information. This is useful for documentation only

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
