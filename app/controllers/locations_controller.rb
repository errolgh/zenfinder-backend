class LocationsController < ApplicationController
  def index
    render json: Location.all.to_json(default)
  end

  def show
    render json: Location.find(params[:id]).to_json(default)
  end

  private

  def default
    {
      :include => {
        :reviews => {
          :except => [:updated_at, :created_at],
          :include => {
            :user => {}
            #Location.find(1).reviews[1].user
          }
        },
        :activities => {
          :except => [:updated_at, :created_at]
        }
      }
    }
  end
end

# def show
#   sighting = Sighting.find_by(id: params[:id])
#   render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
# end

#OR (abstraction... also abstracting `.to_json`)

# def show
#   sighting = Sighting.find_by(id: params[:id])
#   render json: sighting, include: [:bird, :location]
# end

#BUT ALSO (excluding data)

# def show
#   sighting = Sighting.find_by(id: params[:id])
#   render json: sighting, include: [:bird, :location], except: [:updated_at]
# end

#nested, specified data...

# def show
#   sighting = Sighting.find_by(id: params[:id])
#   render json: sighting.to_json(:include => {
#     :bird => {:only => [:name, :species]},
#     :location => {:only => [:latitude, :longitude]}
#   }, :except => [:updated_at])
# end
