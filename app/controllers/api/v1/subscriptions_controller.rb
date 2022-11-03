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
    else
      json_errors(sub)
    end
  end

  def cancel
    sub = Subscription.find(params[:subscription_id])
    sub.status = "cancelled"
    json_response({message: "#{sub.title} has been cancelled for #{sub.customer.full_name}"})
  end

  def destroy
    json_response(Subscription.destroy(params[:id]))
  end
end
