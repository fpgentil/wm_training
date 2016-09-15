class DeliveriesController < ApplicationController
  def index
    @variavel = "World"
    @delivery_id = 1
  end

  def detalhes
    @delivery_id = params[:delivery_id]
  end

  def search
    @delivery_id = params[:delivery_number]
    delivery_number = @delivery_id
    @variavel = "Felipe"

    # hermes api config

    request = Net::HTTP::Get.new(uri.request_uri)
    request.basic_auth(user, pass)

    response = http.request(request)
    response.body

    json_response = JSON.parse(response.body)
    @response = json_response["results"][0]

    render :index
  end
end
