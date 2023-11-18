language: ptbr
*** Configurações ***
Biblioteca    SeleniumLibrary
#Biblioteca     Process
Recurso    ../commom/constants.robot

*** Variáveis ***
${LOGIN.USER_INPUT}        //input[contains(@type,'text')]
${LOGIN.SENHA_INPUT}        //input[contains(@type,'password')]
${LOGIN.ENTRAR_BUTTON}       //button[contains(@type,'submit')]
${EXTRATO.ENTRAR_ICON}        //div[@id='nav-icon']
${USUARIO_INPUT}               tamires.medeiros
${SENHA_INPUT}                  123456

#Variaveis do Menu
${MENU.CLICK_BUTTON}                                  id:nav-icon
${MENU_COMERCIAL.CLICK_BUTTON}                       //a[contains(@class,'main-nav-link main-nav-section section-comercial')] 
${MENU_OFERTA.CLICK_BUTTON}                         //a[@href='/erp/oferta/index'][contains(.,'Oferta')]
${CRIAR_OFERTA.CLICK_BUTTON}                       //a[contains(@title,'Criar')]

#Variaveis do formulario locator
${FORMULARIO.MATRIZ_INPUT}                       //input[contains(@placeholder,'Matriz')]
${FORMULARIO.TIPO_OFERTA_INPUT}                   //input[contains(@placeholder,'Tipo Oferta')]
${FORMULARIO.MARCA_INPUT}                          //input[@placeholder='Marca']
${FORMULARIO.MARCA_CERTIFICAÇÃO_INPUT}              //input[contains(@placeholder,'Marca Certificação')]
${FORMULARIO.TIPO_CONCEITO_INPUT}                    //input[contains(@placeholder,'Tipo Conceito')]
${FORMULARIO.INICIO_INPUT}                            //input[contains(@name,'confInicio')]
${FORMULARIO.FIM_INPUT}                                //input[contains(@name,'confFim')]
${FORMULARIO.DEGUSTACAO_INPUT}                          //input[contains(@placeholder,'Possui Degustação')]
${FORMULARIO.PORTALPOS_INPUT}                         //input[contains(@placeholder,'Portal Pós')]
${FORMULARIO.%PRODUTO_INPUT}                        //input[contains(@name,'alavancaProduto')]
${FORMULARIO.%SERVICO_INPUT}                      //input[contains(@name,'alavancaServico')]
${FORMULARIO.DATA_INICIAL_INPUT}                //input[contains(@name,'alavancaDataInicio')] 
${FORMULARIO.SALVAR_BUTTON}                   //button[@class='btn btn-primary'][contains(.,'Salvar')]
${PROVA.TITLE}                               Visualizar Oferta

#Variaveis do formulario input, text, enter
${FORMULARIO_MATRIZ.TEXT_INPUT}                  Cidades Inteligentes: Tecnologia e Inovação - 2018/2 - CANCELADA303
${FORMULARIO.INICIO_TEXT_INPUT}                  0
${FORMULARIO.FIM_TEXT_INPUT}                     0
${FORMULARIO.%PRODUTO_TEXT_INPUT}                50
${FORMULARIO.%SERVICO_TEXT_INPUT}                50
${FORMULARIO.DATA_INICIAL_TEXT_INPUT}            02012023
${PRESS_KEYS.ENTER}                              ENTER 

*** Palavras-Chave ***
Escrever no campo Usuario
    [Arguments]    ${USUARIO_INPUT}
    Wait Until Keyword Succeeds    ${CONST.MAX_TIMEOUT}     ${CONST.RETRY_TIME} 
    ...    Element Should Be Visible    ${LOGIN.USER_INPUT}
    Input Text     ${LOGIN.USER_INPUT}   ${USUARIO_INPUT}

Escrever no campo senha
    [Arguments]    ${SENHA_INPUT}
    Wait Until Keyword Succeeds    ${CONST.MAX_TIMEOUT}    ${CONST.RETRY_TIME}    
    ...    Element Should Be Visible    ${LOGIN.SENHA_INPUT}
    Input Password    ${LOGIN.SENHA_INPUT}    ${SENHA_INPUT}

Clicar no botão entrar
    Wait Until Keyword Succeeds    ${CONST.MAX_TIMEOUT}     ${CONST.RETRY_TIME}    
    ...    Element Should Be Visible    ${LOGIN.ENTRAR_BUTTON}
    Click Element    ${LOGIN.ENTRAR_BUTTON}

Clicar no botão menu 
    Wait Until Element Is Visible    ${MENU.CLICK_BUTTON}  
    Click Element    ${MENU.CLICK_BUTTON}  

Clicar no botão comercial
    Wait Until Element Is Visible    ${MENU_COMERCIAL.CLICK_BUTTON}     
    Click Element    ${MENU_COMERCIAL.CLICK_BUTTON}         

Clicar no botão oferta
    Wait Until Element Is Visible    ${MENU_OFERTA.CLICK_BUTTON} 
    Click Element     ${MENU_OFERTA.CLICK_BUTTON} 

Clicar no botão criar oferta  
    Wait Until Element Is Visible    ${CRIAR_OFERTA.CLICK_BUTTON} 
    Click Element    ${CRIAR_OFERTA.CLICK_BUTTON}

#PREENCHER FORMULÁRIO
Preencher o campo matriz
    Wait Until Element Is Visible        ${FORMULARIO.MATRIZ_INPUT}       
    Double Click Element                 ${FORMULARIO.MATRIZ_INPUT}            
    Input Text                           ${FORMULARIO.MATRIZ_INPUT}       ${FORMULARIO_MATRIZ.TEXT_INPUT}
    Press Keys                           ${FORMULARIO.MATRIZ_INPUT}       ARROW_DOWN
    Press Keys                           ${FORMULARIO.MATRIZ_INPUT}       ${PRESS_KEYS.ENTER}            

Preencher o campo tipo oferta
    Wait Until Element Is Visible        ${FORMULARIO.TIPO_OFERTA_INPUT}    
    Double Click Element                 ${FORMULARIO.TIPO_OFERTA_INPUT}     
    Press Keys                           ${FORMULARIO.TIPO_OFERTA_INPUT}  ${PRESS_KEYS.ENTER}           

Preencher o campo marca
    Wait Until Element Is Visible        ${FORMULARIO.MARCA_INPUT}      
    Click Element                        ${FORMULARIO.MARCA_INPUT}
    Press Keys                           ${FORMULARIO.MARCA_INPUT}        ${PRESS_KEYS.ENTER}     

Preencher o campo marca certificação
    Wait Until Element Is Visible        ${FORMULARIO.MARCA_CERTIFICAÇÃO_INPUT}      
    Click Element                        ${FORMULARIO.MARCA_CERTIFICAÇÃO_INPUT} 
    Press Keys                           ${FORMULARIO.MARCA_CERTIFICAÇÃO_INPUT}      ${PRESS_KEYS.ENTER}    

Preencher o campo tipo de conceito
    Wait Until Element Is Visible    ${FORMULARIO.TIPO_CONCEITO_INPUT} 
    Click Element                    ${FORMULARIO.TIPO_CONCEITO_INPUT} 
    Press Keys                       ${FORMULARIO.TIPO_CONCEITO_INPUT}           ${PRESS_KEYS.ENTER}  

Preencher o campo inicio
    Wait Until Element Is Visible    ${FORMULARIO.INICIO_INPUT}
    Click Element                    ${FORMULARIO.INICIO_INPUT}
    Input Text                       ${FORMULARIO.INICIO_INPUT}         ${FORMULARIO.INICIO_TEXT_INPUT}    

Preencher o campo fim
    Wait Until Element Is Visible    ${FORMULARIO.FIM_INPUT}       
    Click Element                    ${FORMULARIO.FIM_INPUT}
    Input Text                       ${FORMULARIO.FIM_INPUT}            ${FORMULARIO.FIM_TEXT_INPUT}  

Preencher o campo degustação
    Wait Until Element Is Visible    ${FORMULARIO.DEGUSTACAO_INPUT}     
    Click Element                    ${FORMULARIO.DEGUSTACAO_INPUT}
    Press Keys                       ${FORMULARIO.DEGUSTACAO_INPUT}     ${PRESS_KEYS.ENTER}      

Preencher o campo portal pós
    Wait Until Element Is Visible    ${FORMULARIO.PORTALPOS_INPUT}
    Click Element                    ${FORMULARIO.PORTALPOS_INPUT}  
    Press Keys                       ${FORMULARIO.PORTALPOS_INPUT}      ${PRESS_KEYS.ENTER}       
Preencher o campo produto%
    Wait Until Element Is Visible    ${FORMULARIO.%PRODUTO_INPUT}  
    Click Element                    ${FORMULARIO.%PRODUTO_INPUT}  
    Input Text                       ${FORMULARIO.%PRODUTO_INPUT}       ${FORMULARIO.%PRODUTO_TEXT_INPUT}    
Preencher o campo serviço%
    Wait Until Element Is Visible    ${FORMULARIO.%SERVICO_INPUT} 
    Click Element                    ${FORMULARIO.%SERVICO_INPUT} 
    Input Text                       ${FORMULARIO.%SERVICO_INPUT}      ${FORMULARIO.%SERVICO_TEXT_INPUT} 
Preencher o campo data inicial
    Wait Until Element Is Visible    ${FORMULARIO.DATA_INICIAL_INPUT}  
    Click Element                    ${FORMULARIO.DATA_INICIAL_INPUT}  
    Input Text                       ${FORMULARIO.DATA_INICIAL_INPUT}    ${FORMULARIO.DATA_INICIAL_TEXT_INPUT}
Clicar em salvar
    Click Element                   ${FORMULARIO.SALVAR_BUTTON}
    Sleep    10
Verificar se foi salvo as informações corretamente
    Title Should Be         Cosmos · Criar Oferta
    #Title Should Be        ${PROVA.TITLE}        