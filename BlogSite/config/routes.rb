Rails.application.routes.draw do
  devise_for :accounts
  resources :posts
  get "about" => "public#about", as: :about
  # get "about", controller: "public", action: "about",  as: :about

  get "blog" => "public#blog", as: :blog
  get "contact" => "public#contact", as: :contact
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "post/view" => "posts#save_post_view", as: :post_view

root to: "public#homepage"
end