*** Settings ***

Library    SeleniumLibrary 


Suite Setup            Log         Message1   
Suite Teardown         Log         Message2     
Test Setup             Log         Message3    
Test Teardown          Log         Message4        


Default Tags           Sanity

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
    Open Browser                        ${URL}                                                          chrome
    Maximize Browser Window
    Set Browser Implicit Wait           20
    LoginKW
    Sleep                               2s    
    Click Element                       xpath=//a[@id='welcome']
    Click Element                       xpath=//a[contains(text(),'Logout')]   
    Log                                 Test Sample Login test
    Log                                 This test was executed by %{username} on %{os}             #Affiche: 20200523 10:45:32.796 : INFO : This test was executed by kharr on Windows_NT
    
*** Variables ***                        #variable d'environemment
${URL}                                  https://opensource-demo.orangehrmlive.com                          #variable scalar: contient un seul variable
@{CREDENTIALS}                          Admin                     admin123                                 #variable list: contient plusqu'un variable
&{LOGINDATA}                            username=Admin            password=admin123                        #variable dictionaire: Key=value 

*** Keywords ***
LoginKW
    Input Text                          id=txtUsername                                                 &{LOGINDATA}[username]          #@{CREDENTIALS}[0]
    Input Password                      id=txtPassword                                                 &{LOGINDATA}[password]          #@{CREDENTIALS}[1]
    Click Button                        id=btnLogin
    