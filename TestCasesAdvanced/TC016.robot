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
    #Find out the current URL
    ${CurrentURL}=    Get Location
    Log    ${CurrentURL}
    #Log all content of the html page
    ${htmlcontent}=    Get Source
    Log    ${htmlcontent}

    #If we want to find out the value of any particular attribute, first we need to locate it.
    #syntax: variablename Get Element Attribute    locateelement    attribtevalue to be found
    ${attribute}  Get Element Attribute    name:fld_username    placeholder
    Log    ${attribute}
    #It counts all the elements with matching value.
    #Here we are counting all the elements with class "field"
    ${count}    Get Element Count    class:field
    Log    ${count}
    Close Browser



