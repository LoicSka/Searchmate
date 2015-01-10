Rails.application.routes.draw do

 resources :categories

 resources :searches

 resources :results

 root "searches#index"

  match ':controller(/:action(/:id))', :via => [:get, :post]
end
