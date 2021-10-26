Rails.application.routes.draw do
  resources :alunos
  root 'welcome#index'
end
