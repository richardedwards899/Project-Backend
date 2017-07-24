class ChangeColumnNameFromUserToOriginalUser < ActiveRecord::Migration
  def change
    rename_column(:reports, :user_id, :original_user_id)
  end
end
