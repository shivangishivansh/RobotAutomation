*** Settings ***
Library  SeleniumLibrary
Library    ../ExternalKeywords/ReadLocators.py

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
TC_001 Testing Services
    Open Browser  ${URL}    ${Browser}
    Maximize Browser Window
    ${username}=    Read Element Locator    Registration.myusername_text_name
    Input Text    name:${username}    Tipendar
    ${email}=    Read Element Locator    Registration.email_text_name
    Input Text    name:${email}    abc@gmail.com
    ${password}=    Read Element Locator    Registration.password_text_name
    Clear Element Text    name:${password}
    Input Text    name:${password}    abc123
    ${cpassword}=    Read Element Locator    Registration.Confirm_password_text_name
    Input Text    name:${cpassword}    abc123


*** Keywords ***
Read Element Locator
    [Arguments]    ${Element}
    ${JsonElement}=    read locators    ${Element}
    [return]    ${JsonElement}