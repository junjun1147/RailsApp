Rails.application.routes.draw do
  
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  delete "posts/:id" => "posts#destroy"
  
  
  get 'foots/index' => "foots#index"
  get "foots/new" => "foots#new"
  get "foots/:id" => "foots#show"
  post "foots/create" => "foots#create"
  get "foots/:id/edit" => "foots#edit"
  post "foots/:id/update" => "foots#update"
  delete "foots/:id" => "foots#destroy"
  
  
  get "balls/index" => "balls#index"
  get "balls/new" => "balls#new"
  get "balls/:id" => "balls#show"
  post "balls/create" => "balls#create"
  get "balls/:id/edit" => "balls#edit"
  post "balls/:id/update" => "balls#update"
  delete "balls/:id" => "balls#destroy"

  
  get "/" => "home#top"
  get "about" => "home#about"
  get "category" => "home#category"
end