class Todolist < ActiveRecord::Base
  attr_accessible :priority, :task
  validates_presence_of :task
  validates_presence_of :priority
  belongs_to :todo
end
