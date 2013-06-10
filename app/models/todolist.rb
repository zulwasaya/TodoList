class Todolist < ActiveRecord::Base
  attr_accessible :priority, :task
  validates_presence_of :task

  belongs_to :todo
end
