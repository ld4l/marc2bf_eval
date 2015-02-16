class AddInitialsToEvaluators < ActiveRecord::Migration
  def change
    add_column :evaluators, :initials, :string
  end
end
