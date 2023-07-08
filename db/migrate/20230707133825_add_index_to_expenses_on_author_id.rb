class AddIndexToExpensesOnAuthorId < ActiveRecord::Migration[6.1]
  def change
    add_index :expenses, :author_id, name: "index_expenses_on_author_id"
  end
end
