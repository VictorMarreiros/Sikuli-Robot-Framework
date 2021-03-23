*** Settings ***
Documentation   Sikuli Library Demo
Test Setup      Carrega diretório de imagens
Test Teardown   Stop Remote Server
Library         SikuliLibrary


*** Variables ***
#As imagens da pasta img devem estar de acordo com a interface do seu PC!! Tire os prints necessários
${IMAGE_DIR}        ${CURDIR}\\img

*** Test Cases ***