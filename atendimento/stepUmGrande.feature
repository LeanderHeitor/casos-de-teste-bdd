Funcionalidade: PDI - Step 1 - Informações Gerais - Verificar Elementos PDI

Contexto:
  Dado que o usuário está autenticado como Departamento Regional
  E selecionou uma unidade regional
  E selecionou atendimento da linha "Pesquisa, Desenvolvimento e Inovação" na página de cadastro 

Cenário: Verificar campos obrigatórios
  Quando o usuário clicar no input de produto regional
  Então uma lista de produtos regionais relacionados a PDI deve ser exibida
  E o botão de avançar deve se manter desabilitado
  Quando o usuário seleciona um produto regional da lista
  Então um modal detalhando o produto deve ser exibido, mostrando categoria, unidade e produto Nacional
  Quando o usuário clicar no input de meio de conhecimento
  Então uma deve ser exibida uma lista de meios de conhecimento
  Quando o usuário seleciona um meio de conhecimento
  E clica no input Responsável pela venda
  Então uma lista de responsáveis deve ser exibida
  Quando o usuário seleciona um responsável
  Então o botão de avançar deve ser habilitado

