*** Settings ***

Library  SeleniumLibrary
Resource  ${EXECDIR}/Pages/trabalhe_conosco.robot
Suite Setup  Open Browser  about:blank  chrome
Suite Teardown  Close Browser

*** Variables ***
${url}=  https://www.primecontrol.com.br/trabalhe-conosco/

*** Test Cases ***
Test
    Go To  ${url}
    Click Element  ${trabalheConosco.btnAceitar}
    Click Element  ${trabalheConosco.btnCadastrarCurriculo}
    Switch Window  New
    Input text  ${trabalheConosco.nome}  ${preencheFormulario.nome}
    Input text  ${trabalheConosco.cargo}  ${preencheFormulario.cargo}
    Input text  ${trabalheConosco.salario}  ${preencheFormulario.salario}
    Input text  ${trabalheConosco.email}  ${preencheFormulario.email}
    Input text  ${trabalheConosco.telefone}  ${preencheFormulario.telefone}
    Select From List By Value  ${trabalheConosco.cmbPais}  ${preencheFormulario.cmbPais}
    Input text  ${trabalheConosco.estado}  ${preencheFormulario.estado}
    Input text  ${trabalheConosco.cidade}  ${preencheFormulario.cidade}
    Input text  ${trabalheConosco.bairro}  ${preencheFormulario.bairro}
    Input text  ${trabalheConosco.endereco}  ${preencheFormulario.endereco}
    Input text  ${trabalheConosco.cep}  ${preencheFormulario.cep}
    Input text  ${trabalheConosco.resumo}  ${preencheFormulario.resumo}
    Choose File  ${trabalheConosco.curriculo}  ${EXECDIR}/Curriculo.pdf
    Wait Until Page Contains  Curriculo.pdf  50
    Click Element  ${trabalheConosco.chkConsent}
    Scroll Element Into View  ${trabalheConosco.btnTerminar}
    Click Element  ${trabalheConosco.idioma}
    Click Element  ${trabalheConosco.btnTerminar}
    Wait Until Element Contains  ${trabalheConosco.sucesso}  ${preencheFormulario.sucesso}  50
    