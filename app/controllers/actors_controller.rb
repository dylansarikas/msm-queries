class ActorsController < ApplicationController
  def index
    render({ :template => "actor_templates/list"})
  end

  def show
    @act = Actor.all.where({ :id => params["id"].to_i })[0]
    render({ :template => "actor_templates/show"})
  end
end
