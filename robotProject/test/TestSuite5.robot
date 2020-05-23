*** Settings ***

Library    SeleniumLibrary 


Suite Setup            Log         Message1   
Suite Teardown         Log         Message2     
Test Setup             Log         Message3    
Test Teardown          Log         Message4        


Default Tags           Sanity

*** Test Cases ***
MyFirstTest
    [Tags]                         smoke
    Log                            Hello World...

    
MySecondTest
    #[Tags]                         smoke
    Log                           Inside second test
    Set Tags                      regression1 
    Remove Tags                   regression1    
       
MyThirdTest
    Log                           Inside third test
    
MyFourthTest
    Log                           Inside forth test     
  
    