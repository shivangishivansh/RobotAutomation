#In this test suit we are working on drop down. We would find the values, labels of the drop down
#We will find out how we can fetch all the items in drop down.
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
TC_001 Browser start and Close
    Open Browser  ${URL}    ${Browser}
    Maximize Browser Window

    Select From List By Index    name:sex    1     #First we need to locate and select the option
    ${Value1}=    Get Selected List Value    name:sex    #Once value is selected, get the value and store in variable
    Log    ${Value1}                                     #Log the value
    ${Label1}=    Get Selected List Label    name:sex    #Get the value of label
    Log    ${Label1}
    ${Alloptions}=    Get List items    name:sex
    Log    ${Alloptions}
    Close Browser



