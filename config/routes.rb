Rails.application.routes.draw do
  resources :visions

  root "visions#index"
end
