class MoviesController < ApplicationController
  def index
    render({ :template => "movie_templates/list"})
  end

  def show
    @mov = Movie.all.where({ :id => params["id"].to_i })[0]
    render({ :template => "movie_templates/show"})
  end
end
