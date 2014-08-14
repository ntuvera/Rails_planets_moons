Rails.application.routes.draw do
  root to: 'planets#index'
  resource :planets
end
