*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

Suite Teardown      Close All Browsers

*** Variables ***
${LOGINPAGE URL}      %{LOGINPAGE_URL}
${BROWSER}        %{BROWSER}
${USERNAME}    admin
${PASSWORD}    %{PASSWORD}

*** Test Cases ***
Valid Login
    Given Login page is open
    When Valid username and password are filled in
    And Credentials are submitted
    Then Welcome page should be open

*** Keywords ***
Login page is open
    Open Browser    ${LOGINPAGE URL}    ${BROWSER}
Valid Valid username and password are filled in
    Input Text    username    ${USERNAME}
    Input Password    password    ${PASSWORD}
Credentials are submitted
    Submit Form    #t3-content > div.login-wrap > div.login > form
Welcome page should be open
    Page Should Contain    "Welcome"