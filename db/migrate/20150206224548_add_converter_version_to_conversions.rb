class AddConverterVersionToConversions < ActiveRecord::Migration
  def change
    add_column :conversions, :converter_version, :string
  end
end
