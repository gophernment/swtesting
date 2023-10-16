*** Keywords ***
Login page is open
    Open Browser    ${LOGINPAGE URL}    ${BROWSER}
Invalid username and password are filled in
    Input Text    //*[@id="username"]    ${USERNAME}
    Input Password    //*[@id="password"]    ${PASSWORD}
Credentials are submitted
    # Submit Form    #t3-content > div.login-wrap > div.login > form
    Click Button    //*[@id="t3-content"]/div[2]/div[1]/form/fieldset/div[4]/div/button
Warning message is shown
    Page Should Contain    Warning