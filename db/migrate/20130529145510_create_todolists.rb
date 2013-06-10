class CreateTodolists < ActiveRecord::Migration
  def change
    create_table :todolists do |t|
      t.text :task
      t.integer :priority, :default => 1
      t.timestamps
    end
  end
end
