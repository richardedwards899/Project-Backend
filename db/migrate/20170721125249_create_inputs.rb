class CreateInputs < ActiveRecord::Migration
  def change
    create_table :inputs do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end
end
