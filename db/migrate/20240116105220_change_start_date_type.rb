class ChangeStartDateType < ActiveRecord::Migration[7.1]
  def change
    change_column :events, :start_date, :date
  end  
end
