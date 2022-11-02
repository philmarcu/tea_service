class Api::V1::SubscriptionsController < ApplicationController
  def create
    sub_params = params['subscription']
    sub = Subscription.new( title: sub_params['title'],
                      price: sub_params['price'],
                      frequency: sub_params['frequency'],
                      customer_id: sub_params['customer_id'], 
                      tea_id: sub_params['tea_id'])
    if sub.save
      json_response(sub_serializer(sub))
    end
  end
end