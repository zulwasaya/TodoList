class Todo < ActiveRecord::Base
  attr_accessible :description, :priority, :subject
  belongs_to :user
end
