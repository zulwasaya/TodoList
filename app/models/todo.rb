class Todo < ActiveRecord::Base
  attr_accessible :description, :priority, :subject, :user
  belongs_to :user
end
