Rails.application.routes.draw do
  root to: 'planets#index'
  resources :planets
end
