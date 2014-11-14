class AddChargeableToCharge < ActiveRecord::Migration
  def change
    add_reference :charges, :chargeable, polymorphic: true, index: true
  end
end
