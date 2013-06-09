class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.belongs_to :user
      t.string :subject
      t.integer :priority, :default => 1

      t.timestamps
    end
  end
end
