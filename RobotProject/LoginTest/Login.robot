*** Settings ***
Library    SeleniumLibrary
Suite Setup    Log    I am in Test Suite Setup
Suite Teardown     Log    I am in Test Suite Teardown
Test Setup    Log    I am in Test Setup
Test Teardown     Log    I am in Test Teardown

Default Tags    All


*** Test Cases ***
ETutorBoard
    [Tags]    Smoke
    Log    Hello World
    
FirstSeleniumTest
    Log    Login Test Started 
    Open Browser    ${URL}    chrome
    Set Browser Implicit Wait    5
    Click Link    Login 
    LoginAction    
    Sleep     5    
    Close Browser
    Log    Login Test Completed
    Log    This test was executed by %{username} on %{os} 
    
*** Variables ***
${URL}    https://www.etutorboard.com/
@{CREDENTIALS}    ramganesh@yahoo.com    Hrithik$1  
&{LOGIN_DATA}    username=ramganesh@yahoo.com    password=Hrithik$1

*** Keywords ***
LoginAction
    Input Text    id=signinemail    @{CREDENTIALS}[0]
    Input Text    id=Password    &{LOGIN_DATA}[password]
    Click Button    css=.color-1:nth-child(1)
    