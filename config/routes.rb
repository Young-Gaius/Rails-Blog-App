resources :users, only: [:index, :show] do
  resources :posts, only: [:index, :show]
end
end
end