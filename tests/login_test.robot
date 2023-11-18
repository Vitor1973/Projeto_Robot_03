language: ptbr

*** Configurações ***
Documentação       Criar matricula valida dentro do Cosmos erp 
Recurso            ../hooks/hooks.robot
Recurso            ../steps/login_steps.robot
Recurso            ../steps/home_steps.robot


*** Casos De Teste ***
Cenario 01: Realizar login
    [Tags]    login
    [Documentação]     Acessar pagina cosmos erp e criar uma matricula valida
    [Inicialização]    Iniciação do teste
    Dado que eu faça login com o usuário e senha 
    Quando clico no botão menu 
    Então preencho o formulario e verifico se salvou corretamente 
    [Finalização]      Finalização do teste


    


  
    

   

