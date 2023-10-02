[Documentation]      Arquivo relacionado aos cenários de testes da aplicação Pinterest

***Settings***
Resource   libraries/libraries.robot
Resource   resources/environment.robot   
Resource   keywords/keywords.robot
Resource   resources/elements.robot


***Test Cases***
Cenário: Cadastro com sucesso
    Dado que o usuário está na Página Inicial
    Quando o usuário preencher os campos obrigatórios com informações válidas
    Então o usuário será cadastrado com sucesso

Cenário: Login com sucesso 
    Dado que o usuário está na Página Inicial
    Quando insere as credenciais válidas 
    Então o usuário é redirecionado para a página inicial do Pinterest

Cenário: Pesquisar por um Pin 
    Dado que o usuário está logado no aplicativo Pinterest
    Quando digita uma palavra-chave na barra de busca 
    Então uma lista de pins relacionados é demonstrado

Cenário: Realizar logout no aplicativo 
    Dado que o usuário está logado no aplicativo Pinterest
    E acessa a Página de Perfil
    Quando clica no botão Sair
    Então o logout é realizado com sucesso