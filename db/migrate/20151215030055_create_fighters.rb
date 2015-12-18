class CreateFighters < ActiveRecord::Migration
  def change
    create_table :fighters do |t|
      t.string :first_name
      t.string :last_name
      t.string :weight_class
      t.integer :weight
      t.string :current_record
      t.string :current_titles
      t.string :hometown

      t.timestamps null: true
    end
  end
end
