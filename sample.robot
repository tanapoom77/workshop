*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    chrome
${url}    https://www.lotuss.com/th
${inputsearch}    //*[@class='MuiInputBase-root MuiInputBase-fullWidth']//*[@id='search-bar-input']
${enter}    //*[@id='search-bar-input']
${brand}    //*[@id='carousel-slide']
${result}    หมู
${result2}    สันคอหมู
${product1}    //div[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-xs-9']//div[@id='product-list']//*[@id='product-card-1']

*** Keywords ***
Open Web
    Open Browser    ${url}    ${browser}
    Wait Until Page Contains Element    ${brand}
Search
    Wait Until Page Contains Element    ${inputsearch}    
    Input Text    ${inputsearch}    ${result}
    Press Keys    ${enter}    ENTER
Chek result
    Wait Until Page Contains    ${result}
    Wait Until Page Contains Element    ${product1}
    Wait Until Page Contains    ${result2}

*** Test Cases ***   
Check Search
    Open Web
    Search
    Chek result
New Check Search
    Open Web
    Search
