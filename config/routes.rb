Rails.application.routes.draw do
  resources :request_equipmets
  resources :faculties
  devise_for :users
  resources :equipment

  #get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/landing'
  post 'request_equipmets/updatereq'
  #root 'home#index'
  root "home#about"

  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
