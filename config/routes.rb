Rails.application.routes.draw do

  resources :users, only: [:new, :create, :validate]
  resources :sessions, only: [:new, :create, :destroy]

  get '/' => 'home#hello_world'
  get '/index' => 'home#index'
  get '/contact' => 'home#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
