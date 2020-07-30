class AddBuyDayToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :buy_day, :date
  end
end
