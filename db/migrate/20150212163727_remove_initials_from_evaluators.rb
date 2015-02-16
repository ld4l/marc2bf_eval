class RemoveInitialsFromEvaluators < ActiveRecord::Migration
  def change
    remove_column :evaluators, :initials, :string
  end
end
