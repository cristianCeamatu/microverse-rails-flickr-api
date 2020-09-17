Rails.application.routes.draw do
  resources :photos, only: [:index, :create]
  root 'photos#index'
end
