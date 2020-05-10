class Api::OrdersController < ApplicationController
  def index
    @orders = Order.all
    render "index.json.jb"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @order = Order.new(
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
      user_id: params[:user_id],
    )
    @order.save
    render "show.json.jb"
  end

  def update
    @order = Order.find_by(id: params[:id])
    @order.subtotal = params[:subtotal] || @order.subtotal
    @order.tax = params[:tax] || @order.tax
    @order.total = params[:total] || @order.total
    @order.user_id = params[:user_id] || @order.user_id
    @order.save
    render "show.json.jb"
  end

  def destroy
    order = Order.find_by(id: params[:id])
    order.destroy
    render json: { message: "Looks like the passanger pigeon got lost." }
  end
end
