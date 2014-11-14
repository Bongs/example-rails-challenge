class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.decimal :amount, precision: 8, scale: 2
      t.string :unique_code
      t.boolean :paid
      t.boolean :refunded

      t.timestamps
    end
  end
end
