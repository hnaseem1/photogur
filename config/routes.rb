Rails.application.routes.draw do

  resource :sessions, only: %i(new create destroy)

  resource :users, only: %i(new create)


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pictures#index'
  resources :pictures

end
