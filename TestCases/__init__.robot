*** Settings ***
Suite Setup  Before Folder
Suite Teardown    After Folder

*** Variables ***

*** Keywords ***
Before Folder
    Log    It should run before the folder only

After Folder
    Log    It should run after the folder only