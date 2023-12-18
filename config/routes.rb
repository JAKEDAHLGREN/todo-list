Rails.application.routes.draw do
  get 'signup' => 'users#new'
  resources :users, except: [:index, :new]

  resources :tasks
  
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "sites#index"
end
