class CreateConversions < ActiveRecord::Migration
  def change
    create_table :conversions do |t|
      t.text :marc
      t.text :bf

      t.timestamps null: false
    end
  end
end
