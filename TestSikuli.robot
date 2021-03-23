*** Settings ***
Documentation   Sikuli Library Demo
Test Setup      Carrega diretório de imagens
Test Teardown   Stop Remote Server
Library         SikuliLibrary


*** Variables ***
#As imagens da pasta img devem estar de acordo com a interface do seu PC!! Tire os prints necessários
${IMAGE_DIR}        ${CURDIR}\\img

*** Test Cases ***
Windows Brackets Hello World
    Abre o menu inicial do Windows
    Abre o Brackets
    Digita "Hello World"
    Fecha o Brackets

*** Keywords ***
Carrega diretório de imagens
    Add Image Path      ${IMAGE_DIR}


Abre o menu inicial do Windows
    Click   windows_start_menu.png


Abre o Brackets
    Click   brackets.png


Digita "Hello World"
    Input Text      brackets_workspace.png       ${TEXTO}
    Screen Should Contain       helloword.png


Fecha o Brackets
    Click      close.png