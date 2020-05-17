class Api::CartedProductsController < ApplicationController
  def index
    @carted_products = current_user.carted_products
    render "index.json.jb"
  end

  def show
    @carted_product = CartedProduct.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @carted_product = CartedProduct.new(
      status: params[:status],
      user_id: current_user.id,
      plate_id: params[:plate_id],
      quantity: params[:quantity],
      order_id: params[:order_id],
    )
    @carted_product.save
    render "show.json.jb"
  end

  def update
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.status = params[:status] || @carted_product.status
    @carted_product.user_id = params[:user_id] || @carted_product.user_id
    @carted_product.plate_id = params[:plate_id] || @carted_product.plate_id
    @carted_product.quantity = params[:quantity] || @carted_product.quantity
    @carted_product.order_id = params[:order_id] || @carted_product.order_id
    @carted_product.save
    render "show.json.jb"
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.destroy
    render json: { message: "Cargo's been lost Sam!" }
  end
end
