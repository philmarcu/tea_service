class ChangeSubscriptionFrequency < ActiveRecord::Migration[7.0]
  def change
    remove_column :subscriptions, :frequency
    add_column :subscriptions, :frequency, :integer
  end
end
