*** Settings ***
Library  SeleniumLibrary
Library    String
Library    REST     https://robotframework.org/    ssl_verify=false
*** Variables ***
${browser}  chrome
${url}  https://robotframework.org/

*** Test Cases ***
Case1
    Open Browser  ${url}    ${browser}
    step1
    get  reguest
    sleep  1
Case2
    step2
    get  reguest
    sleep  1
Case3
    step3
    get  reguest


*** Keywords ***
step1
    Maximize Browser Window
    sleep  2
    Click Button  go-to-Getting started
    sleep  1
    click element  xpath:/html/body/div[1]/div[5]/div[2]/div[2]/div/div[1]/button[2]
    sleep  1
    click element  xpath://*[@id="app"]/div[5]/div[2]/div[2]/div/div[1]/button[3]
step2
    Click button  go-to-Resources
    Click element  xpath:/html/body/div[1]/div[5]/div[3]/div[2]/div/div/div[1]/button[2]
    Click element  xpath:/html/body/div[1]/div[5]/div[3]/div[2]/div/div/div[1]/button[3]
step3
    Click element  xpath://html/body/div[1]/div[3]/div/div[2]/div[1]/button/div
    sleep  1
    click link  https://robot-framework.readthedocs.io/en/stable/
