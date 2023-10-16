*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${URL}      https://google.com
${BROWSER}        %{BROWSER}

*** Test Cases ***
Open Google
    Given Google page is open
    Then Google message is shown

*** Keywords ***
Google page is open
    Open Browser    ${URL}    ${BROWSER}
Google message is shown
    Page Should Contain    aแสดง Google ใน