module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({ message: e.message }, :not_found)
    end
  end

  def json_errors(model)
    render json: {errors: model.errors.full_messages}, status: 422
  end
end