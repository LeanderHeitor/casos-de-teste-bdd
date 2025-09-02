Funcionalidade: Login

  Contexto:
    Dado que o usuário está na página de login

  Cenário: Verificar Botão de Login
    Então o botão de login deve estar desabilitado
    E todos os campos dvem estar vazios

  Cenário: Login com credenciais válidas
    Quando o usuário insere o nome de usuário "usuarioValido@gmail.com"
    E insere a senha "SenhaCorreta"
    Então o usuário deve ser redirecionado para a página inicial

  Cenário: Login com credenciais inválidas - usuário incorreto
    Quando o usuário insere o nome de usuário "usuario.inexistente@teste.com"
    E insere a senha "SenhaCorreta"
    Então deve ser exibida a mensagem de erro "Email ou Senha incorretos."
    E o usuário deve permanecer na página de login
  
  Cenário: Login com credenciais inválidas - senha incorreta
    Quando o usuário insere o nome de usuário "usuarioValido@gmail.com"
    E insere a senha "senhaIncorreta"
    Então deve ser exibida a mensagem de erro "Email ou Senha incorretos."
    E o usuário deve permanecer na página de login

  Cenário: Login com email menor que três caracteres
    Quando o usuário insere o nome de usuário "ab"
    Então deve ser exibida a mensagem de erro "Digite um email válido ou nome de usuário (mínimo 3 caracteres)"
    E o botão de login deve estar desabilitado

  Cenário: Login com senha menor que seis caracteres
    Quando o usuário insere o nome de usuário "usuarioValido@gmail.com"
    E insere a senha "12345"
    Então deve ser exibida a mensagem de erro "Senha deve ter pelo menos 6 caracteres"
    E o botão de login deve estar desabilitado

  Cenário: Esqueceu sua senha
    Quando o usuário clica no link "Esqueceu sua senha?"
    Então o usuário deve ser redirecionado para a página de recuperação de senha