class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.references :users, null: false, foreign_key: true
      t.references :events, null: false, foreign_key: true

      t.timestamps
    end
  end
end
