class Api::OrdersController < ApplicationController
  def index
    @orders = Order.all
    render "index.json.jb"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render "show.json.jb"
  end
end
