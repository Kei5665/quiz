Rails.application.routes.draw do
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "/" => "home#top"
  get "about" => "home#about"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  post "posts/answer" => "posts#answer"
end
