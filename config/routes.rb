Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
namespace :api do
  namespace :v1 do
#     resources :trips, only: [:show]
  resources :trips
  resources :users
  resources :posts
  resources :comments 


    end
  end
end
