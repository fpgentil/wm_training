class DeliveriesController < ApplicationController
  def index
    @variavel = "World"
    @delivery_id = 1
  end

  def detalhes
    @delivery_id = params[:delivery_id]
  end
end
