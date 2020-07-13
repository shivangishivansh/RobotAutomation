*** Settings ***
Resource    ../Resources/Resource8.robot

*** Variables ***

*** Test Cases ***
Login
    Given Start Browser
    When Fill up details
    Then Click Button