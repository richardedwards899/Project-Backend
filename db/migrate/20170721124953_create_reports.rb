class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :year

      t.timestamps null: false
    end
  end
end
