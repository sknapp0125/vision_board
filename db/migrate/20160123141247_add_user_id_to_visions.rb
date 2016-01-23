class AddUserIdToVisions < ActiveRecord::Migration
  def change
    add_column :visions, :user_id, :integer
    add_index :visions, :user_id
  end
end
