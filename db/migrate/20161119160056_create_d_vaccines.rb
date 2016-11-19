class CreateDVaccines < ActiveRecord::Migration[5.0]
  def change
    create_table :d_vaccines do |t|
      t.string :vaccine
      t.date :date_taken
      t.date :retake

      t.timestamps
    end
  end
end
