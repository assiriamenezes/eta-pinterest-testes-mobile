[Documentation]     Arquivo relacionado as Keywords.

***Settings***
Library    String

***Keywords***
Dado que o usuário está na Página Inicial
    Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}
    Wait Until Element Is Visible      ${BEM_VINDO}   timeout=10s

Quando o usuário preencher os campos obrigatórios com informações válidas
    Input Text        ${EMAIL}        assiriaqateste@gmail.com
    Click Element     ${CONTINUAR_BOTÃO}
    Wait Until Element Is Visible      ${SENHA_CADASTRO}    timeout=20s  
    Input Text    ${SENHA_CADASTRO}        Test123!2023
    Click Element     ${AVANÇAR_BOTÃO}
    Wait Until Element Is Visible    ${NOME_CADAS}    timeout=20s
    Input Text        ${NOME_CADAS}            Teste Usuário Pinterest
    Click Element     ${AVANÇAR_BOTÃO}
    Sleep  5s
    Input Text        ${IDADE_CADAS}            25
    Click Element     ${AVANÇAR_BOTÃO}
    Wait Until Element Is Visible    ${GENERO_CADASTRO}   timeout=20s
    Click Element     ${GENERO_CADASTRO}
    Wait Until Element Is Visible    ${AVANÇAR_BOTAO_UM}     timeout=10s
    Click Element    ${AVANÇAR_BOTAO_UM}
    Sleep  10s 
    Wait Until Element Is Visible      ${INTERESSE_UM}         timeout=10s
    Click Element      ${INTERESSE_UM}
    Wait Until Element Is Visible      ${INTERESSE_DOIS}       timeout=10s
    Click Element      ${INTERESSE_DOIS}
    Wait Until Element Is Visible       ${INTERESSE_TRES}      timeout=10s
    Click Element      ${INTERESSE_TRES}
    Wait Until Element Is Visible     ${INTERESSE_QUATRO}      timeout=10s
    Click Element      ${INTERESSE_QUATRO}
    Wait Until Element Is Visible     ${INTERESSE_CINCO}       timeout=10s
    Click Element      ${INTERESSE_CINCO}
    Wait Until Element Is Visible     ${AVANÇAR_BOTAO_DOIS}    timeout=20s
    Click Element      ${AVANÇAR_BOTAO_DOIS}
    Sleep   10s

Então o usuário será cadastrado com sucesso
    Element Should Be Visible     ${PAGINA_INICIAL_PINTEREST}


Quando insere as credenciais válidas 
    Input Text        ${EMAIL}      eascorujinhasbubu@gmail.com
    Click Element     ${CONTINUAR_BOTÃO}
    ${iniciar_present} =    Run Keyword And Return Status    Element Should Be Visible    ${CANCELAR_MODAL}
    Run Keyword If         '${iniciar_present}' == 'True'    Click Element                ${CANCELAR_MODAL}
    Wait Until Element Is Visible        ${SENHA_LOGIN}       timeout=5s
    Input Text        ${SENHA_LOGIN}           Assou!#21
    Wait Until Element Is Visible         ${ENTRAR_LOGIN}     timeout=5s
    Click Element     ${ENTRAR_LOGIN}

Então o usuário é redirecionado para a página inicial do Pinterest
    Wait Until Element Is Visible     ${PAGINA_INICIAL_PINTEREST}   timeout=10s

Dado que o usuário está logado no aplicativo Pinterest
    Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}     noReset=true
    Então o usuário é redirecionado para a página inicial do Pinterest

Quando digita uma palavra-chave na barra de busca 
    Wait Until Element Is Visible        ${PESQUISA_ICONE}     timeout=10s
    Click Element                        ${PESQUISA_ICONE}
    Wait Until Element Is Visible        ${BARRA_BUSCA}        timeout=10s
    Input Text                           ${BARRA_BUSCA}               gatinhos fofos 

Então uma lista de pins relacionados é demonstrado
    Wait Until Element Is Visible        ${SUGESTAO_BUSCA}     timeout=10s
    Click Element                        ${SUGESTAO_BUSCA}
    Sleep   10s

E acessa a Página de Perfil
    Wait Until Element Is Visible        ${SALVO_ICONE}     timeout=10s
    Click Element                        ${SALVO_ICONE}

Quando clica no botão Sair
    Wait Until Element Is Visible        ${CONFIGURAÇÕES}   timeout=10s
    Click Element                        ${CONFIGURAÇÕES}
    Wait Until Element Is Visible        ${SAIR}            timeout=10s
    Click Element                        ${SAIR}

Então o logout é realizado com sucesso
    Wait Until Element Is Visible      ${BEM_VINDO}   timeout=10s

