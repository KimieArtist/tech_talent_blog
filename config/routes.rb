Rails.application.routes.draw do
  devise_for :users
  # get 'comments/edit'

  # get 'blog_posts/index'
 #
 #  get 'blog_posts/show'
 #
 #  get 'blog_posts/new'
 #
 #  get 'blog_posts/edit'
 resources :comments, only: [:edit, :create, :update, :destroy]
 
 resources :blog_posts
 
 get 'user_posts/:name' => 'blog_posts#user_posts', as: :user_posts
 
 root 'blog_posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
