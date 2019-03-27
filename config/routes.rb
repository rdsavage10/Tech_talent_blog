Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :posts

  get 'posts' => 'posts#posts'
  root 'posts#index'

  get '/:name' => 'post#user_posts', as: :user_posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
