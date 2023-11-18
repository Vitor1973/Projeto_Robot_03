languange: ptbr

*** Settings ***
Library    SeleniumLibrary
Resource    ../commom/constants_01.robot

*** Keywords ***
Iniciação do teste
    Open Browser    browser=${BROWSER}
    Maximize Browser Window   
    Go To    ${BASE_URL}

# falta implementação da integração com o zephyr para registro do resultados dos testes
Finalização do teste
    Close All Browsers