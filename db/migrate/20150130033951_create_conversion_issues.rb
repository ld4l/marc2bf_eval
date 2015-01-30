class CreateConversionIssues < ActiveRecord::Migration
  def change
    create_table :conversion_issues do |t|
      t.integer :conversion_id
      t.integer :issue_id
      t.text :comment

      t.timestamps null: false
    end
  end
end
