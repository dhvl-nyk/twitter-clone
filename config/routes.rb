Rails.application.routes.draw do
  get 'sessions/login'

  post 'sessions/login'

  get 'sessions/home'

  get 'sessions/profile'

  get 'sessions/setting'

  resources :tweets
  resources :users
  post 'tweets/post_tweet'

  post 'users/follow'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
