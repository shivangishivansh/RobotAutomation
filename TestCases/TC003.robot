#Use of keywords without argument

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
    Clear Element Text    name:fld_username
    Enter Username Password Email         #Use of user defined *** keywords ***
    Input Text    name:fld_password    abc123
    Input Text    name:fld_cpassword    abc123
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
    Input Text    name:fld_username    Tipendar
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    abc@gmail.com
    Clear Element Text    name:fld_password