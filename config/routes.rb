Rails.application.routes.draw do

  resources :items do
    resources :addresses
  end
  
end
