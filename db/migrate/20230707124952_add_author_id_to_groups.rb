class AddAuthorIdToGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :author_id, :bigint, null: false
  end
end

