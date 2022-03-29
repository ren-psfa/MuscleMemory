class CreateTrainingMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :training_menus do |t|
      t.string :spot
      t.string :menu
      t.string :content, array: true, default: []
      t.references :training_record, null: false, foreign_key: true

      t.timestamps
    end
  end
end
