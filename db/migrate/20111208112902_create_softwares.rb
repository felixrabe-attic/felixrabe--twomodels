class CreateSoftwares < ActiveRecord::Migration
  def change
    create_table :softwares do |t|
      t.string :name
      t.string :description
      t.integer :vendor_id

      t.timestamps
    end
  end
end
