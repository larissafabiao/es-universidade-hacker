Dado('que eu estou na pagina de cadastro de aluno') do
  visit '/alunos/new'
end

Quando('preencho o campo {string} com {string}') do |string, string2|
  fill_in string, :with => string2
end

Quando('clico em salvar') do
  click_on 'Salvar novo aluno'
end

Entao('ele deve ter sido salvo no banco de dados') do
  aluno = Aluno.order("id").last
  expect(aluno.nome).to eq('Youngwoo Yoon')
  expect(aluno.email).to eq('yoonusp9021@usp.br')
end

Entao('deverei ver o aluno na pagina de listagem de alunos') do
  expect(page).to have_content('Youngwoo Yoon')
  expect(page).to have_content('yoonusp9021@usp.br')
end

Quando('deixo o campo {string} vazio') do |string|
  fill_in string, :with => ""
end

Entao('deverei ver a mensagem de erro {string}') do |string|
  expect(page).to have_content(string)
end

