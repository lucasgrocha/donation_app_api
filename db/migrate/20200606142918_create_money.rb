class CreateMoney < ActiveRecord::Migration[6.0]
  def change
    create_table :money do |t|
      t.float :value
      t.string :payment_method

      t.timestamps
    end
  end
end
