class AddEvaluatorIdToConversions < ActiveRecord::Migration
  def change
    add_column :conversions, :evaluator_id, :string
  end
end
