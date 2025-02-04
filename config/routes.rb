Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show, :edit, :index, :update]

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

  root to: "homes#top"
  get "home/about" => "homes#about"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
