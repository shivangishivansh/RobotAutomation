*** Settings ***
Library    SeleniumLibrary
Documentation    Here we can provide additional information. This is useful for documentation only

*** Variables ***
${URL}    http://www.thetestingworld.com/testings
${Browser}    Chrome

*** Keywords ***
Start Browser
    [Timeout]    2s     #We can use time out at keywords level as well
    [Documentation]    We can do the documentation or provide additional information here
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    ${title}=    Get Title
    [Return]    ${title}
Enter Username Password Email
    [Timeout]    5s    Keyword is not executed within time     #WE can pass message for timeout
    [Documentation]    Again we can provide additional info here.
    [Arguments]    ${username}    ${emailID}    ${password}    ${rpassword}
    Clear Element Text    name:fld_username
    Input Text    name:fld_username    ${username}
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    ${emailID}
    Clear Element Text    name:fld_password
     Input Text    name:fld_password    ${password}
    Input Text    name:fld_cpassword    ${rpassword}
