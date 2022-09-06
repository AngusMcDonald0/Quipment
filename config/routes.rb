Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :equipments, only: %i[index new show create] do
    resources :bookings, only: %i[new create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "components", to: "pages#components"
end
