Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"#
  namespace :api do
    namespace :v1 do
      post '/calculate_total', to: 'shopping_carts#calculate_total'
    end
  end
end
