Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :profiles, only: [:show, :edit, :update]
  root to: 'barbers#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :barbers do
    resources :bookings
  end

end

