Rails.application.routes.draw do
  root "links#index"
  resources :links
  post "/create", to: "links#create"
  get "/:id", to: "links#redirect"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
