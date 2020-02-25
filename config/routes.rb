Rails.application.routes.draw do
  resources :genres, only: [:index, :show, :new, :create, :edit, :update]
  resources :artists, except: :delete
  resources :songs, except: :delete
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
