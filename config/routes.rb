Rails.application.routes.draw do
  root 'main#main'
  resources :contacts, except: %i[edit update destroy]
end
