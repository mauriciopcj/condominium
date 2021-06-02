Rails.application.routes.draw do
  resources :taxes
  resources :syndics
  resources :users
  resources :apartments
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
