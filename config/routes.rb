Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :dogs, only: [:index, :home, :show, :new, :create, :edit, :update, :destroy] do
    resources :appointments, only: [:create]
  end

  resources :appointments, only: [:show] do
    member do
      patch :deny
      patch :accept
    end
  end

  resource :profile, only: [:show]
end
