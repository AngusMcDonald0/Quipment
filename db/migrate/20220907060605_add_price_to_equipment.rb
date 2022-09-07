class AddPriceToEquipment < ActiveRecord::Migration[7.0]
  def change
    add_column :equipment, :price, :integer
  end
end
