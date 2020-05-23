*** Settings ***

Library    SeleniumLibrary    

*** Test Cases ***
MyFirstTest
    Log    Hello World

    
FirstSeleniumTest
    Open Browser                        https://google.com    ff
    Set Browser Implicit Wait           20
    Input Text                          name=q                Automation Testing  
    Press Keys                          name=q                ENTER
    Close Browser
    Log                                 Test Completed    
       
SampleLoginTest
    [Documentation]                     This is a simple Login test
    Open Browser                        https://opensource-demo.orangehrmlive.com                      chrome
    Maximize Browser Window
    Set Browser Implicit Wait           20
    Input Text                          id=txtUsername                                                 Admin
    Input Password                      id=txtPassword                                                 admin123
    Click Button                        id=btnLogin
    Sleep                               2s    
    #Click Element                       xpath=//a[@id='welcome']
    #Click Element                       xpath=//a[contains(text(),'Logout')]   
    Log                                 Test Sample Login test
    