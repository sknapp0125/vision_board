 Rails.application.routes.draw do
  devise_for :users
  resources :visions
  root "visions#index"
end
