Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories
  resources :notes

  authenticated :user do
    root 'notes#index', as: "authenticated_root"
  end

  root 'welcome#index'
end
