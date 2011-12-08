class MakeVendorAString < ActiveRecord::Migration
  class Software < ActiveRecord::Base
  end

  def up
    add_column :softwares, :vendor_str, :string
    Software.reset_column_information
    Software.all.each { |s| s.update_attributes! :vendor_str => s.vendor.name }
    drop_table :vendors
    rename_column :softwares, :vendor_str, :vendor
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
