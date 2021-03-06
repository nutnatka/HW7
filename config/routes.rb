Rails.application.routes.draw do
  get 'sessions/new'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :author_comment_vote, only: [:create]
  post 'votes', to: 'votes#create', as: 'author_comment_votes'

  resources :sessions
  resources :users
  root 'posts#index'

  resources :posts do
    resources :comments

    root to: 'posts#index'
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
