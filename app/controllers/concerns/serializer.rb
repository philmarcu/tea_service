module Serializer
  def tea_serializer(tea)
    TeaSerializer.new(tea)
  end

  def sub_serializer(sub)
    SubscriptionSerializer.new(sub)
  end
end