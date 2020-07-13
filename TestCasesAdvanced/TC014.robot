*** Settings ***
Library  SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
TC_001 Browser start and Close
    Open Browser  ${URL}    ${Browser}
    Maximize Browser Window
    ${title}=    Get Title
    Log    ${title}
    ${Speed}=    Get Selenium Speed
    Log    ${Speed}
    #Lets find out VALUE of Sign up button
    ${Signup}=    Get Value    xpath://*[@id="tab-content1"]/form/div/input[2]
    Log    ${Signup}
    #Find out inner text of READ DETAILS link
    ${LinkText}    Get Text    xpath://*[@id="tab-content1"]/form/div/em/a
    Log    ${LinkText}
    Close Browser



