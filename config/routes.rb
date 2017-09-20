Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :posts
  get  'index' => 'posts#index'

  post 'index' => 'practice#index'

  get  'about' => 'practice#about'

  get  '/:name' => 'posts#user_posts', as: :user_posts

  # root 'practice#index'
  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
