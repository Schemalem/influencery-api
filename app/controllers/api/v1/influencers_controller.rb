class Api::V1::InfluencersController < ApplicationController
  #Active Model Serializer - Index action added
  def index
    @influencers = Influencer.all
    render json: @influencers
  end
end
