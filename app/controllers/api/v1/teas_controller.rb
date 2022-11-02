class Api::V1::TeasController < ApplicationController
  def index
    json_response(tea_serializer(Tea.all))
  end
end