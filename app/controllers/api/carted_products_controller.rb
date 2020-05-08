class Api::CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.all
    render "index.json.jb"
  end

  def show
    @carted_product = CartedProduct.find_by(id: params[:id])
    render "show.json.jb"
  end
end
