class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.text :general_screen
      t.datetime :attendance_date
      t.references :pacient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
