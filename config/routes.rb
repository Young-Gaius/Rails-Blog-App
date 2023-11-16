Rails.application.routes.draw do
  resources :users do
    resources :posts do
      member do
        post 'like', to: 'likes#create'
      end
      resources :comments
    end
  end
  resources :likes, only: [:create]
end