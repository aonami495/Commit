class CreateStudyLogs < ActiveRecord::Migration[7.2]
  def change
    create_table :study_logs do |t|
      t.datetime :started_at
      t.datetime :finished_at
      t.text :memo
      t.references :user, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
