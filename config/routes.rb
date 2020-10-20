Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # nested chores route under api/v1 = namespacing
  # gives all routes besides edit and new --> these forms are built in JS FE app 
  namespace :api do
    namespace :v1 do
      resources :chores
    end
  end 
end
