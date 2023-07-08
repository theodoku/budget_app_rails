Rails.application.routes.draw do
  # get "/home/index"
  resources :groups do
    resources :expenses
  end
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'groups#index', as: :authenticated_root_path
    end
    unauthenticated do
      root "home#index", as: :unauthenticated_root_path
    end
  end
end