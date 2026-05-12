class CreateTopics < ActiveRecord::Migration[7.2]
  def change
    create_table :topics do |t|
      t.string :name, null: false
      t.text :description
      t.string :emoji
      t.boolean :archived, null: false, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
