*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          login_keywords.robot

Suite Teardown      Close All Browsers

*** Variables ***
${LOGINPAGE URL}      %{LOGINPAGE_URL}
${BROWSER}        %{BROWSER}
${USERNAME}    admin
${PASSWORD}    %{PASSWORD}

*** Test Cases ***
Valid Login
    Given Login page is open
    When Invalid username and password are filled in
    And Credentials are submitted
    Then Warning message is shown
