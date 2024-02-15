class AddPrivateToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :is_private, :boolean
  end
end
