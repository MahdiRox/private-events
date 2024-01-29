class RenameNameToTitle < ActiveRecord::Migration[7.1]
  def change
    rename_column :events, :name, :title
  end
end
