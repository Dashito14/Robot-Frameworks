*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open browser  ${WEB}  ${NAV}
    maximize browser window


End Web Test
    Close all browsers