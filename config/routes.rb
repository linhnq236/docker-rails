Rails.application.routes.draw do
  resources :uses
  resources :items
  root 'home#index'
  devise_for :users

  scope module: 'api' do
    namespace :v1 do
      resources :items
      resources :uses
      resources :users
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
