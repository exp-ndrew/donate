class Tables < ActiveRecord::Migration
  def change
    create_table :nonprofits do |t|
      t.string :name
    end

    create_table :donations do |t|
      t.float :amount
      t.integer :nonprofit_id
      t.string :from
    end
  end
end
