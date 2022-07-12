Rails.application.routes.draw do

  root to: 'home#index'

  get 'home/index'

  resources :items do
    resources :addresses
  end
  
end
