*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/ToolsqaApp.robot
Resource    ../Resources/po/everything.robot
Test Setup       everything.start test case
Test Teardown    everything.finish test case
*** Test Cases ***
Tools QA Test
    ToolsqaApp.Tools QA click input scroll