Rails.application.routes.draw do
  root 'image#new'
  resources :image, only: [:index, :new, :create]
end
