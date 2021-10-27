#language: pt

Funcionalidade: Cadastrar alunos
  Como administrador
  Para que eu possa registrar o historico escolar do aluno
  Eu quero cadastrar um aluno no banco de dados

Cenario: Cadastro de aluno com sucesso
  Dado que eu estou na pagina de cadastro de aluno
  Quando preencho o campo "Nome" com "Youngwoo Yoon"
  Quando preencho o campo "Email" com "yoonusp9021@usp.br"
  E clico em salvar
  Entao ele deve ter sido salvo no banco de dados
  E deverei ver o aluno na pagina de listagem de alunos

Cenario: Cadastro de aluno com erro - sem nome
  Dado que eu estou na pagina de cadastro de aluno
  Quando preencho o campo "Email" com "yoonusp9021@usp.br"
  E deixo o campo "Nome" vazio
  E clico em salvar
  Entao deverei ver a mensagem de erro "É obrigatório informar o nome!"

Cenario: Cadastro de aluno com erro - sem e-mail
  Dado que eu estou na pagina de cadastro de aluno
  Quando preencho o campo "Nome" com "Youngwoo Yoon"
  E deixo o campo "Email" vazio
  E clico em salvar
  Entao deverei ver a mensagem de erro "É obrigatório informar o email!"

Cenario: Cadastro de aluno com erro - e-mail inválido
  Dado que eu estou na pagina de cadastro de aluno
  Quando preencho o campo "Nome" com "Youngwoo Yoon"
  E preencho o campo "Email" com "ywuuewasd/sp.br"
  E clico em salvar
  Entao deverei ver a mensagem de erro "Formato de email inválido!"