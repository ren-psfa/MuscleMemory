class CreateTrainingRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :training_records do |t|
      t.date :date
      t.json :data
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
