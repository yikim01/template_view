Rails.application.routes.draw do

  root "static_pages#home"

  get "newsletter" => "newsletters#index"

  get "about" => "static_pages#about"

  get "blog" => "static_pages#blog"

  get "contact" => "static_pages#contact"

  resources :newsletter, only: [:new, :create]


end
