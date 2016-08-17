Rails.application.routes.draw do
  devise_for :users

  resources :profiles, only: [:show]
  root to: 'barbers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :barbers do
    resources :bookings
  end

end

