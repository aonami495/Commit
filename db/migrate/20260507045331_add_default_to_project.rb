class AddDefaultToProject < ActiveRecord::Migration[7.2]
  def change
    change_column_default :projects, :archived, false
  end
end
