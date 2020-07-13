*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.thetestingworld.com/testings
${Browser}    Chrome

*** Keywords ***
Start Browser
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
Enter Username Password Email
    [Arguments]    ${username}    ${emailID}    ${password}    ${rpassword}
    Clear Element Text    name:fld_username
    Input Text    name:fld_username    ${username}
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    ${emailID}
    Clear Element Text    name:fld_password
     Input Text    name:fld_password    ${password}
    Input Text    name:fld_cpassword    ${rpassword}
