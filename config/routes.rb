Rails.application.routes.draw do
  resources :alunos
  root 'welcome#index'
  resources :menu_principal, only: [:index]
end
