class Api::PlatesController < ApplicationController
  def index
    @plates = Plate.all
    render "index.json.jb"
  end

  def show
    @plate = Plate.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @plate = Plate.new(
      print_name: params[:print_name],
      scientific_name: params[:scrientific_name],
      plate_number: params[:plate_number],
      medium: params[:medium],
      price: params[:price],
      number_of_prints: params[:number_of_prints],
      description: params[:description],
      image_url: params[:image_url],
    )
    @plate.save
    render "show.json.jb"
  end

  def update
    @plate = Plate.find_by(id: params[:id])
    @plate.print_name = params[:print_name] || @plate.print_name
    @plate.scientific_name = params[:scientific_name] || @plate.scientific_name
    @plate.plate_number = params[:plate_number] || @plate.plate_number
    @plate.medium = params[:medium] || @plate.medium
    @plate.price = params[:price] || @plate.price
    @plate.number_of_prints = params[:number_of_prints] || @plate.number_of_prints
    @plate.description = params[:description] || @plate.description
    @plate.image_url = params[:image_url] || @plate.image_url
    @plate.save
    render "show.json.jb"
  end

  def destroy
    plate = Plate.find_by(id: params[:id])
    plate.destroy
    render json: { message: "Bang! It's dead." }
  end
end
