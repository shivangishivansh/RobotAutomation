#Use of keywords with arguments

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
TC_001 Browser start and Close
    Open Browser  ${URL}    ${Browser}
    Maximize Browser Window
    #Set Selenium Speed    2seconds      #Useful command for debuggin
    Enter Username Password Email    testing1    testing@gmail.com    testing123  testing123     #Keyword with arguments
    Select Radio button    add_type    home    #name and value
    #Select From List By Index    name:sex    1    #Index starts from 0
    #Select From List By Value    name:sex    2    #Value can be found in html
    Select From List By Label    name:sex    Male    #Visible text in the drop down
    Select Checkbox    name:terms
    #Click Link    xpath://*[@id="tab-content1"]/form/div/em/a
    #Click Button  xpath://*[@id="tab-content1"]/form/div/input[2]
    #Close Browser


*** Keywords ***
Enter Username Password Email
    [Arguments]    ${username}    ${emailID}    ${password}    ${rpassword}
    Clear Element Text    name:fld_username
    Input Text    name:fld_username    ${username}
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    ${emailID}
    Clear Element Text    name:fld_password
     Input Text    name:fld_password    ${password}
    Input Text    name:fld_cpassword    ${rpassword}