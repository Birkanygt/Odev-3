*** Settings ***
Library      SeleniumLibrary
Library      FakerLibrary
Resource     everything.robot
*** Keywords ***
input faker name and last name
    ${Name} =    FakerLibrary.Name
    everything.input    css=#firstName    ${Name}
    ${LastName} =    FakerLibrary.LastName
    everything.input    css=#lastName    ${LastName}
input faker email
    ${Email} =    FakerLibrary.Email
    everything.input    css=#userEmail    ${Email}
click gender
    everything.click    css=label[for="gender-radio-1"]
input faker phone number
    ${PhoneNumber} =    FakerLibrary.PhoneNumber
    everything.input    css=#userNumber   ${PhoneNumber}
input date of birth
    everything.click    id=dateOfBirthInput
    click element       css=#dateOfBirth > div.react-datepicker__tab-loop > div.react-datepicker-popper > div > div > div.react-datepicker__month-container > div.react-datepicker__header > div.react-datepicker__header__dropdown.react-datepicker__header__dropdown--select > div.react-datepicker__month-dropdown-container.react-datepicker__month-dropdown-container--select > select
    everything.click    css=#dateOfBirth>div.react-datepicker__tab-loop > div.react-datepicker-popper > div > div > div.react-datepicker__month-container > div.react-datepicker__header > div.react-datepicker__header__dropdown.react-datepicker__header__dropdown--select > div.react-datepicker__month-dropdown-container.react-datepicker__month-dropdown-container--select > select > option:nth-child(10)
    everything.click    css=div[aria-label="Choose Friday, October 22nd, 2021"]
input subject
    everything.click    css=#subjectsInput
    everything.input    css=#subjectsInput      Arts
    press keys    css=#subjectsInput    ENTER
click hobbies
    everything.click    css=label[for="hobbies-checkbox-1"]
    everything.click    css=label[for="hobbies-checkbox-2"]
    everything.click    css=label[for="hobbies-checkbox-3"]
input faker address
    ${Address} =    FakerLibrary.Address
    input text    css=#currentAddress      ${Address}
scroll
    everything.scroll    1000
click states
    everything.click     css=#state
    everything.click     css=#react-select-3-option-2
click city
    everything.click    css=#city
    everything.click    css=#react-select-4-option-1