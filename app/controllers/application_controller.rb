class ApplicationController < ActionController::API
  include ExceptionHandler
  include Response
  include Serializer
end
