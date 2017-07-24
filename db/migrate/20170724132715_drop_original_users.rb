class DropOriginalUsers < ActiveRecord::Migration
  def change
    drop_table(:original_users)
  end
end
