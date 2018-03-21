class ActorsController < ApplicationController
  def index

  end

  def new_actor
    actor = Actor.new(actor_params)

    if actor.save
      actors = []
      Actor.all.each do |a|
        actors << {id: a.id, name: a.name}
      end
      render json: actors.to_json, status: 200
    else
      render json: {error: "Issue saving new actor."}, status: 422
    end
  end

  private

  def actor_params
    params.require(:actor).permit!
  end
end
