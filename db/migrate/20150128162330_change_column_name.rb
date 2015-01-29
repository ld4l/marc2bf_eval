class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :conversions, :local_id, :local_system_id
  end
end
