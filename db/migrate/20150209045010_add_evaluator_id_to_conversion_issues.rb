class AddEvaluatorIdToConversionIssues < ActiveRecord::Migration
  def change
    add_column :conversion_issues, :evaluator_id, :string
  end
end
