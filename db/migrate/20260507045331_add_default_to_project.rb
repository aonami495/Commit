class AddDefaultToProject < ActiveRecord::Migration[7.2]
  def change
    change_column_default :projects, :archived, from: nil, to: false
  end
end
