class CreateTeas < ActiveRecord::Migration[7.0]
  def change
    create_table :teas do |t|
      t.string :title
      t.float :temperature
      t.integer :brew_time
      t.text :description

      t.timestamps
    end
  end
end
