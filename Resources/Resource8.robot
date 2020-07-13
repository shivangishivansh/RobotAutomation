*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://thetestingworld.com/testings/
${Browser}    Chrome

*** Keywords ***
Start Browser
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

Fill up details
    Click Button    id:tab2
    Input Text    name:_txtUserName    test
    Input Text    name:_txtPassword    test

Click submit button
    Click Button    xpath://*[@id="tab-content2"]/form/div/input[2]

