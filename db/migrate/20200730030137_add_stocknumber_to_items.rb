class AddStocknumberToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :stock_number, :integer
  end
end
