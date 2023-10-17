*** Settings ***
Library    Collections
Library    String
Library    RequestsLibrary

*** Variables ***
${base_url}    http://localhost:8081
${prefix}      /api/payment-platform1/v1/etax

*** Test Cases ***
POST E-TAX Info success
    ${resp}=    POST E-TAX Info

POST E-TAX Info fail when retrieve file not found
    ${resp}=    POST E-TAX Info fail

*** Keywords ***
POST E-TAX Info
    Create Session    etax    ${base_url}${prefix}  verify=true
    &{body}=    Create Dictionary  batchTimeout=${300}    manualTriggerBy=pallat    checkRunning=${true}
    &{header}=  Create Dictionary  Content-Type=application/json    Authorization=ey....    X-Request-ID=etax-request-id-01    X-Correlation-ID=etax-correlation-id-01    X-Channel-ID=etax-chanel-id-01    request-date=2023-10-20    request-time=12:00:01
    ${response}=    POST On Session    etax    /prep-etax-info    json=${body}    headers=${header}                                                                            
    # log       ${response.json()}
    Status Should Be    200    ${response}