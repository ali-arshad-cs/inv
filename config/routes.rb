Rims::Application.routes.draw do
  get "welcome/index"
  devise_for :users
  root :to => 'welcome#index'
  get 'summary', to: 'welcome#summary'
  resources :items
  resources :users
  resources :employees
  resources :cpus
  resources :equipment



end