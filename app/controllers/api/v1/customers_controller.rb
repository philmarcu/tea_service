class Api::V1::CustomersController < ApplicationController
  def subscriptions
    customer = Customer.find(params[:customer_id])
    json_response(sub_serializer(customer.subscriptions))
  end
end