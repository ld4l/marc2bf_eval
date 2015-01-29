class CreateEvaluators < ActiveRecord::Migration
  def change
    create_table :evaluators do |t|
      t.string :initials
      t.string :last_name
      t.string :first_name

      t.timestamps null: false
    end
  end
end
