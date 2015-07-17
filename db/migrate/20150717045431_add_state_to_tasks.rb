class AddStateToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :state, :string, deafult: "to_do"
  end
end
