*** Variables ***

&{trabalheConosco}
...     btnAceitar=//*[contains(text(), 'Aceitar')]
...     btnCadastrarCurriculo=//a[text()='CADASTRE SEU CURRÍCULO']
...     nome=//*[@id="name"]
...     cargo=//*[@id="headline"]
...     salario=//*[@id="salary"]
...     email=//*[@id="email"]
...     telefone=//*[@id="phone-0"]
...     cmbPais=//*[@id="country"]
...     estado=//*[@id="region"]
...     cidade=//*[@id="city"]
...     bairro=//*[@id="neighborhood"]
...     endereco=//*[@id="address"]
...     cep=//*[@id="zipcode"]
...     resumo=//*[@id="summary"]
...     btnAddFormacao=//button[@type='Adicionar formação']
...     curriculo=//*[@id="validatedCustomFile"]
...     chkConsent=//*[@id="consent"]
...     idioma=//*[text()='Português']
...     btnTerminar=//button[@type='submit']
...     sucesso=//*[text()='com sucesso']

&{preencheFormulario}
...     nome=Aline Soares Pereira
...     cargo=Analista de Qualidade de Software
...     salario=3.000,00
...     email=alinesoares.tur@gmail.com
...     telefone=00938850553
...     cmbPais=PT
...     estado=Porto
...     cidade=Porto
...     bairro=Campanhã
...     endereco= Rua Jaime Brasil 104
...     cep=4350-009
...     resumo=Curriculo enviado com Robot Framework. obs. telefone +351 938850553.
...     sucesso=sucesso
