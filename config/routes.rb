Rails.application.routes.draw do
  resources :alunos
  resources :login
  root 'login#new'
end
