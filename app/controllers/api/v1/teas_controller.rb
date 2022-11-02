class Api::V1::TeasController < ApplicationController
  def index
    json_response(tea_serializer(Tea.all))
  end
  
  private
  def tea_params
    params.require(:tea).permit(:title, :temperature, :brew_time, :description)
  end
end