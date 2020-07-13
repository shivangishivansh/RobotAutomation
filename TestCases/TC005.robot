#Use of keywords with arguments

*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resource1.robot

*** Variables ***


*** Test Cases ***
TC_001 Browser start and Close
    Start Browser
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

