class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :campaign_name
      t.integer :collected
      t.integer :goal
      t.timestamp :expiration_date

      t.timestamps
    end
  end
end
