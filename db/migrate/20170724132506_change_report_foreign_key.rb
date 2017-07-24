class ChangeReportForeignKey < ActiveRecord::Migration
  def change
    rename_column(:reports, :original_user_id, :user_id)
  end
end
