Rails.application.routes.draw do
  get 'movies/index'
  #get 'directors/index'
  get("/", { :controller => "misc", :action => "homepage" })
  get "/directors" => "directors#index"
  get "/directors/:id" => "directors#show"
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
end
