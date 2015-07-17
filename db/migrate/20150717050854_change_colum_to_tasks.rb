class ChangeColumToTasks < ActiveRecord::Migration
  def change
  	change_column :tasks, :state, :string, default: "to_do"
  end
end
