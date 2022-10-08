Rails.application.routes.draw do
  resources :blogs, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
