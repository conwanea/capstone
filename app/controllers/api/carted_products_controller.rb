class Api::CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.all
    render "index.json.jb"
  end

  def show
    @carted_product = CartedProduct.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @carted_product = CartedProduct.new(
      status: params[:status],
      user_id: params[:user_id],
      product_id: params[:product_id],
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
    @carted_product.product_id = params[:product_id] || @carted_product.product_id
    @carted_product.quantity = params[:quantity] || @carted_product.quantity
    @carted_product.order_id = params[:order_id] || @carted_product.order_id
    @carted_product.save
    render "show.json.jb"
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.destroy
    render json: { message: "Cargos been lost Sam!" }
  end
end
