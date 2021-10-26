*** Settings ***
Library    SeleniumLibrary
Resource    ./po/Toolsqa.robot
*** Keywords ***
Tools QA click input scroll
    Toolsqa.input faker name and last name
    Toolsqa.input faker email
    Toolsqa.click gender
    Toolsqa.input faker phone number
    Toolsqa.input date of birth
    Toolsqa.input subject
    Toolsqa.click hobbies
    Toolsqa.input faker address
    Toolsqa.scroll
    Toolsqa.click states
    Toolsqa.click city