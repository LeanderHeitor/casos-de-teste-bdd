Funcionalidade: PDI - Step 1 - Informações Gerais - Verificar Elementos PDI

Contexto:
  Dado que o usuário está autenticado como Departamento Regional
  E selecionou uma unidade regional
  E selecionou atendimento da linha "Pesquisa, Desenvolvimento e Inovação" na página de cadastro

Cenário: Validar estado inicial dos campos obrigatórios
  Quando o usuário acessa a página de informações gerais do PDI
  Então o botão de avançar deve estar desabilitado
  E todos os campos obrigatórios devem estar vazios

Cenário: Exibir lista de produtos regionais ao clicar no input
  Quando o usuário clicar no input de produto regional
  Então deve ser exibida uma lista de produtos regionais relacionados à PDI
  E a lista deve conter a opção "CONSULTORIA DE INOVAÇÃO"
  E ao usuário selecionar "CONSULTORIA DE INOVAÇÃO" da lista
  Então "CONSULTORIA DE INOVAÇÃO" deve ser exibido no input

Cenário: Não exibir modal sem produto selecionado
  Quando o usuário acessa a página de informações gerais
  Então não deve ser exibido um modal com detalhes do produto

Cenário: Exibir modal ao selecionar produto da lista
  Dado que o usuário selecionou "CONSULTORIA DE INOVAÇÃO" da lista de produtos regionais
  Então deve ser exibido um modal com detalhes do produto
  E o modal deve mostrar categoria, unidade e produto nacional do produto

Cenário: Selecionar áreas de conhecimento
  Quando o usuário clicar no input de área de conhecimento
  Então deve ser exibida uma lista de áreas de conhecimento
  E ao usuário selecionar "Física", "Química" e "Matemática"
  Então as áreas selecionadas devem ser exibidas

Cenário: Selecionar temática e subtemática de conhecimento
  Quando o usuário clicar no input de temática e subtemática de conhecimento
  Então deve ser exibida uma lista de temáticas e subtemáticas de conhecimento
  E ao usuário selecionar "Clima", "Pesquisa Ártica" e "Satélites"
  Então as temáticas selecionadas devem ser exibidas

Cenário: Selecionar Poder de Indução
  Quando o usuário clicar no input de Poder de Indução
  Então deve ser exibida uma lista de Poderes de Indução
  E ao usuário selecionar "Puxado pelo mercado (demand-pull): Projetos induzidos pelo mercado no SENAI (ideias originalmente advindas das empresas)"
  Então o Poder de Indução selecionado deve ser exibido

Cenário: Selecionar TRL
  Quando o usuário selecionar o alcance do TRL
  Então o TRL selecionado deve ser exibido

Cenário: Selecionar meio de conhecimento
  Quando o usuário clicar no input meio de conhecimento
  Então deve ser exibida uma lista de meios de conhecimento
  E ao usuário selecionar "Site Oficial"
  Então "Site Oficial" deve ser exibido no input

Cenário: Exibir lista de responsáveis pela venda
  Quando o usuário clicar no input Responsável pela venda
  Então deve ser exibida uma lista de responsáveis, que possuem uma sublista
  E ao usuário selecionar "Unidade Operacional" da lista
  Então as opções da sublista devem ser mostradas
  E ao usuário selecionar "Liderança da UO" da lista
  Então deve ser exibida uma opção específica em relação à sublista anterior
  E ao usuário selecionar "CEO, CTO, Líder de Área de Negócios"
  Então "CEO, CTO, Líder de Área de Negócios" deve ser exibido no input

Cenário: Digitar código de integração
  Quando o usuário clicar no input de código de integração
  E digitar "12345"
  Então "12345" deve ser exibido no input

Cenário: Habilitar botão de avançar ao preencher campos obrigatórios
  Dado que o usuário selecionou um produto regional
  E selecionou um meio de conhecimento
  E selecionou um responsável pela venda
  Então o botão de avançar deve ser habilitado
  E deve ser possível prosseguir para o próximo step

# Cenário de integração - Fluxo completo (executar menos frequentemente)
Cenário: Fluxo completo - Preencher informações gerais e avançar
  Quando o usuário preencher todos os campos obrigatórios com informações válidas
  E também preencher os campos opcionais específicos de PDI
  E clicar no botão avançar
  Então deve ser direcionado para o próximo step do atendimento