Funcionalidade: PDI - Step 1 - Informações Gerais - Verificar Elementos PDI

Contexto:
  Dado que o usuário está autenticado como Departamento Regional
  E selecionou uma unidade regional
  E selecionou atendimento da linha "Pesquisa, Desenvolvimento e Inovação" na página de cadastro

Cenário: Validar estado inicial dos campos obrigatórios
  Quando o usuário acessa a página de informações gerais do PDI
  Então o botão de avançar deve estar desabilitado
  E todos os campos obrigatórios devem estar vazios

Cenário: Exibir lista de produtos regionais
  Quando o usuário clicar no input de produto regional
  Então deve ser exibida uma lista de produtos regionais relacionados a PDI
  E o botão de avançar deve permanecer desabilitado

Cenário: Exibir modal com detalhes do produto selecionado
  Dado que o usuário abriu a lista de produtos regionais
  Quando o usuário selecionar um produto regional da lista
  Então deve ser exibido um modal com detalhes do produto
  E o modal deve mostrar categoria, unidade e produto nacional
  E deve haver opção para confirmar a seleção

Cenário: Exibir lista de meios de conhecimento
  Quando o usuário clicar no input de meio de conhecimento
  Então deve ser exibida uma lista de meios de conhecimento
  E a lista deve conter opções válidas para PDI

Cenário: Exibir lista de responsáveis pela venda
  Quando o usuário clicar no input Responsável pela venda
  Então deve ser exibida uma lista de responsáveis
  E a lista deve conter usuários ativos do departamento


Cenário: Habilitar botão de avançar ao preencher campos obrigatórios
  Dado que o usuário selecionou um produto regional
  E selecionou um meio de conhecimento
  E selecionou um responsável pela venda
  Então o botão de avançar deve ser habilitado
  E deve ser possível prosseguir para o próximo step

Cenário: Validar campos opcionais específicos de PDI
  Quando o usuário acessar os campos opcionais
  Então deve visualizar os campos: Plataforma Tecnológica, Sublinha de Pesquisa, Área de Conhecimento
  E deve ser possível preencher estes campos sem afetar a obrigatoriedade dos campos principais

# Cenário de integração - Fluxo completo (executar menos frequentemente)
Cenário: Fluxo completo - Preencher informações gerais e avançar
  Quando o usuário preencher todos os campos obrigatórios com informações válidas
  E também preencher os campos opcionais específicos de PDI
  E clicar no botão avançar
  Então deve ser direcionado para o próximo step do atendimento
  E as informações devem ser salvas automaticamente
