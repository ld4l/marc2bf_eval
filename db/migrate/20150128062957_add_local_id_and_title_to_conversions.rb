class AddLocalIdAndTitleToConversions < ActiveRecord::Migration
  def change
    add_column :conversions, :local_id, :string
    add_column :conversions, :title, :string
  end
end
