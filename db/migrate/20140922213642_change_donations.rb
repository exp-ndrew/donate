class ChangeDonations < ActiveRecord::Migration
  def change
    change_column :donations, :amount, :decimal, :scale => 2
  end
end
