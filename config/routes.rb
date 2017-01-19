Rims::Application.routes.draw do
  get "welcome/index"
  devise_for :users
  root :to => 'welcome#index'
  resources :items
  resources :users
  resources :employees
  resources :cpus
end