Rails.application.routes.draw do
  get 'actors/index'
  get 'movies/index'
  #get 'directors/index'
  get("/", { :controller => "misc", :action => "homepage" })
  get "/directors" => "directors#index"
  get "/directors/:id" => "directors#show"
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  get "/actors" => "actors#index"
  get "/actors/:id" => "actors#show"
end
