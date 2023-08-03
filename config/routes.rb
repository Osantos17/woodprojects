Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/woodprojects" => "woodprojects#index"
  post "/woodprojects" => "woodprojects#create"
  get "/woodprojects/:id" => "woodprojects#show"
  patch "/woodprojects/:id" => "woodprojects#update"
  delete "/woodprojects/:id" => "woodprojects#destroy"
  # Defines the root path route ("/")
  # root "articles#index"
end
