class UpdateGroupsTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :groups, :author_id if column_exists?(:groups, :author_id)

    change_table :groups do |t|
      t.bigint :author_id, null: false
    end

    add_index :groups, :author_id, name: "index_groups_on_author_id"
  end
end


