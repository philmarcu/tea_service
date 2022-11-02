class ChangeSubFrequencyToString < ActiveRecord::Migration[7.0]
  def change
    remove_column :subscriptions, :frequency
    add_column :subscriptions, :frequency, :string
  end
end
