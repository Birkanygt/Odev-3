*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${TIMEOUT}    1
*** Keywords ***
click
    [Arguments]    ${SELECTOR}
    wait until page contains element    ${SELECTOR}    ${TIMEOUT}
    click element    ${SELECTOR}
input
    [Arguments]    ${SELECTOR}    ${TEXT}
    wait until page contains element    ${SELECTOR}    ${TIMEOUT}
    clear element text    ${SELECTOR}
    click element    ${SELECTOR}
    input text    ${SELECTOR}     ${TEXT}
scroll
    [Arguments]    ${HEIGHT}
    execute javascript     window.scrollTo(0,${HEIGHT})
verify
    [Arguments]    ${SELECTOR}    ${TEXT}
    wait until page contains element    ${SELECTOR}
    wait until page contains    ${TEXT}
    page should contain element    ${SELECTOR}
start test case
    open browser    https://demoqa.com/automation-practice-form    Firefox
    MAXIMIZE BROWSER WINDOW
finish test case
        close browser