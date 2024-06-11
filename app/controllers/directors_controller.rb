class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list"})
  end

  def youngest
    date = Director.where.not({ :dob => nil }).maximum(:dob)
    @dir = Director.where({ :dob => date })[0].name
    @id = Director.where({ :dob => date })[0].id
    @age = Director.where({ :dob => date })[0].dob
    render({ :template => "director_templates/youngest"})
  end

  def eldest
    date = Director.where.not({ :dob => nil }).minimum(:dob)
    @dir = Director.where({ :dob => date })[0].name
    @id = Director.where({ :dob => date })[0].id
    @age = Director.where({ :dob => date })[0].dob
    render({ :template => "director_templates/eldest"})
  end

  def show
    render({ :template => "director_templates/show"})
  end
end
