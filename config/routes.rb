Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists, :genres, only: [:create, :update, :new, :edit, :show]
  resources :songs, only: [:index, :new, :edit, :create, :update, :show]
end
