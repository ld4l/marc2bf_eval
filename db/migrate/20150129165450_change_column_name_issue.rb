class ChangeColumnNameIssue < ActiveRecord::Migration
  def change
  	rename_column :issues, :issue, :issue_tag
  end
end
