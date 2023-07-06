class AddGroupToExpenseGroups < ActiveRecord::Migration[7.0]
  def change
    add_reference :expense_groups, :group, null: false, foreign_key: true
  end
end
