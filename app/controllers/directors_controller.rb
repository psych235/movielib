class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)

    if @director.save
      flash[:notice] = "Success!!!"
      redirect_to @director
    else
      flash[:error] = "Failure!!!"
      redirect_to new_director_path
    end
  end

  def new_director
    director = Director.new(director_params)

    if director.save
      directors = []
      Director.all.each do |d|
        directors << {id: d.id, name: d.name}
      end
      render json: directors.to_json, status: 200
    else
      render json: {error: "Issue saving new director."}, status: 422
    end
  end

  private

  def director_params
    params.require(:director).permit!
  end
end
