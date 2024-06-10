Rails.application.routes.draw do
  #get 'directors/index'
  get("/", { :controller => "misc", :action => "homepage" })
  get "/directors" => "directors#index"
  get "/directors/:id" => "directors#show"
end
