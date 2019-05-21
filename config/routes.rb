Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :dogs, only: [:index, :home, :show, :new] do
    resources :appointments, only: [:create]
  end

  resources :appointments, only: [:show] do
    member do
      patch :deny
      patch :accept
    end
  end

  get 'profile', to: 'users#show'

end


# get 'profile', to: 'users#show'




# /dogs
# dogs/new
# dogs/id
# dogs/id/appointments
# appointments/id/deny-accept
# /profile
