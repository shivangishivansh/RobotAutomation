#In this test suite, we will be using python programs as keywords
*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resource5.robot


*** Variables ***

*** Test Cases ***
TC_001 Browser start and Close
    Start Browser
    Create Folder       #Python program (Keyword) is used in here.
    Close Window



