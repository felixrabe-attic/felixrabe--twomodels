class AddVersionToSoftware < ActiveRecord::Migration
  def change
    add_column :softwares, :version, :string
  end
end
