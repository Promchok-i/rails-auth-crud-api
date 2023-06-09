Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :user do
        post 'sign_in', to: 'sessions#sign_in'
        delete 'sign_out', to: 'sessions#sign_out'
        get 'me', to: 'sessions#me'

        resources :blogs
      end
    end
  end
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
