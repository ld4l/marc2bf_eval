class RemoveEvaluatorIdFromConversions < ActiveRecord::Migration
  def change
    remove_column :conversions, :evaluator_id, :string
  end
end
