class AddTodoIdToTodolists < ActiveRecord::Migration
  def change
    add_column :todolists, :todo_id, :integer, :default => 1
  end
end
