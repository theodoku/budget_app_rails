class RemoveAuthorIdFromGroups < ActiveRecord::Migration[7.0]
  def change
    remove_column :groups, :author_id, :integer
  end
end