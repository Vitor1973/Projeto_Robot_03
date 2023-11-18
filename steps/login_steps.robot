language: ptbr
*** Configurações ***
Biblioteca     SeleniumLibrary
Biblioteca     Process
Recurso    ../pages/login_page.robot

*** Palavras-Chave ***
Que eu faça login com o usuário e senha      
    Escrever no campo Usuario    ${USUARIO_INPUT}
    Escrever no campo senha      ${SENHA_INPUT}
    Clicar no botão entrar                   
   
Clico no botão menu
    Clicar no botão menu       
    Clicar no botão comercial
    Clicar no botão oferta    
    Clicar no botão criar oferta 

Preencho o formulario e verifico se salvou corretamente 
    Preencher o campo matriz    
    Preencher o campo tipo oferta    
    Preencher o campo marca    
    Preencher o campo marca certificação 
    Preencher o campo tipo de conceito 
    Preencher o campo inicio 
    Preencher o campo fim 
    Preencher o campo degustação
    Preencher o campo portal pós
    Preencher o campo produto%
    Preencher o campo serviço%
    Preencher o campo data inicial
    Clicar em salvar
    Verificar se foi salvo as informações corretamente     
    


   
    
