*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${URL}      http://localhost:3000/skills/technical
${BROWSER}        %{BROWSER}
${DETACH}    add_experimental_option("detach", True)

*** Test Cases ***
Search SQL Skill
    Given MySkills Page Is Open
    When SQL Is Filled in Search to add
    Then Only Show SQL Skill in the List

*** Keywords ***
MySkills Page Is Open
    Open Browser    ${URL}    ${BROWSER}
    Input Text    tokenIdInput    %{TOKEN}
    Click Button    tokenIdSubmitButton
    Wait Until Element Is Visible    //*[@id="navbar-skill"]/a
    Click Element    //*[@id="navbar-skill"]/a
    Click Button    open-technical-skill-editor

SQL Is Filled in Search to add
    Input Text    skill-search-bar    SQL

Only Show SQL Skill in the List
    Element Should Contain    //*[@id="__next"]/div[4]/div/div[3]/div/div[3]/div/button/div    SQL