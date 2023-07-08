class AddAuthorIdToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_column :expenses, :author_id, :bigint
  end
end
