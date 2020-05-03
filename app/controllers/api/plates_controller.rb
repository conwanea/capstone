class Api::PlatesController < ApplicationController
  def index
    @plates = Plate.all
    render "index.json.jb"
  end

  def show
    @plate = Plate.find_by(id: params[:id])
    render "show.json.jb"
  end
end
