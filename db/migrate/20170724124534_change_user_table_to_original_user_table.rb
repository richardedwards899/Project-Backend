class ChangeUserTableToOriginalUserTable < ActiveRecord::Migration
  def change
    rename_table(:users, :original_users)
  end
end
