class AddReportToInput < ActiveRecord::Migration
  def change
    add_reference :inputs, :report, index: true, foreign_key: true
  end
end
