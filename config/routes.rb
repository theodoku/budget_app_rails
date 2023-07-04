Rails.application.routes.draw do
  devise_for :users

  resources :expense_groups
  resources :groups, only: [:index, :create, :new, :destroy] do
  resources :expenses
  end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
end
